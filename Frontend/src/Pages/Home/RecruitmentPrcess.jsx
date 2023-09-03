import React, { useState, useEffect } from "react";
import axios from "axios";
import OwlCarousel from "react-owl-carousel";
import "owl.carousel/dist/assets/owl.carousel.css";
import "owl.carousel/dist/assets/owl.theme.default.css";
import RecruitmentImage from "../../assets/image/recruitment.png";
import ClientBgImage from "../../assets/image/clientswithbg.png";
import Partner1 from "../../assets/image/clients/partner-1.png";
import { Router, Routes, Link } from "react-router-dom";
import RecruitmentProcedure from "../../Pages/Documents/RecruitmentProcedure";

const RecruitmentPrcess = () => {
  const options = {
    loop: true,
    center: false,
    items: 3,
    margin: 20,
    autoplay: true,
    dots: false,
    autoplayTimeout: 3000,
    smartSpeed: 450,
    nav: false,
    responsive: {
      0: {
        items: 1,
      },
      768: {
        items: 3,
      },
      976: {
        items: 4,
      },
      1200: {
        items: 7,
      },
    },
  };

  const [Process, setSlider_1] = useState([]);
  const [Clients, setSlider_2] = useState([]);
  const [Clients_1, setSlider_3] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const ProcessData = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Process"
        );
        setSlider_1(ProcessData); // Assuming you want to slice the filtered data
        const ClientsData = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Clients"
        );
        setSlider_2(ClientsData);
        const Clients_1Data = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Clients_1"
        );
        setSlider_3(Clients_1Data);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  useEffect(() => {
    // Axios GET request to fetch data
    AboutData();
  }, []);

  console.log(Clients);

  return (
    <>
      <div className="xl:pt-48">
        <div className="container">
          {Process.map((item, index) => (
            <div key={index} className="flex items-center flex-col xl:flex-row">
              <div
                className="w-full xl:w-1/2 h-60 p-4 flex flex-col justify-center md:mt-20 mt-1 order-2 xl:order-1"
                data-aos="fade-up"
                data-aos-duration="1000"
              >
                <div className="bg-gray-200 p-2 rounded-xl text-lg md:w-full">
                  <p>{item.desc} </p>
                </div>
                <div className="pt-1">
                  <Link to="/recruitmentprocedure">
                    <button className="bg-primaryOrange text-white px-4 py-2 tracking-wider font-semibold transition duration-300 hover:bg-primary hover:-translate-y-2 rounded-lg">
                      PROCESS
                    </button>
                  </Link>
                </div>
              </div>

              <div
                className="xl:w-1/2 flex flex-col items-end md:pb-12 mt-14 mb-8 order-1 xl:order-2"
                data-aos="fade-up"
                data-aos-duration="1000"
              >
                <div className="uppercase w-full text-right text-3xl md:mt-10">
                  <h3>
                    {item.caption}{" "}
                    <span className="text-primaryOrange">{item.title}</span>
                  </h3>
                </div>
                <div key={index} className="xl:w-[400px] pt-2 md:w-[500px] rounded-tl-[200px] rounded-br-[200px] overflow-hidden">
                  <img src={item.bannerimage} alt="" className="w-full" />
                </div>
              </div>
            </div>
          ))}
        </div>

        <div className="relative w-full h-96 mt-8">
          <div className="absolute top-0 left-0 w-full h-96 overflow-hidden">
            {Clients_1.map((item, index) => (
              <img src={item.slider_image} alt="" className="w-full" />
            ))}
          </div>
          <div className="absolute top-0 left-0 w-full h-96 bg-black opacity-90"></div>
          <div className="absolute top-0 left-0 w-full h-96 flex justify-center items-center flex-col">
            <div className="text-white uppercase text-3xl">
              {Clients_1.map((item, index) => (
                <h3>
                  <span key={index} className="text-primaryOrange">
                    {item.caption}
                  </span>
                  {item.title}
                </h3>
              ))}
            </div>
            <div className="container pt-4">
              <div className="w-full h-40">
                <OwlCarousel classID="owl-theme" {...options}>
                  {Clients.map((item, index) => (
                    <div key={index} className="item w-full xl:w-40">
                      <img src={item.bannerimage} alt="" className="w-full" />
                    </div>
                  ))}
                </OwlCarousel>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default RecruitmentPrcess;
