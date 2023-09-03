import React, { useState, useEffect } from "react";
import axios from "axios";
import RecruitImage from "../../assets/image/recruit-bg.png";
import OwlCarousel from "react-owl-carousel";
import "owl.carousel/dist/assets/owl.carousel.css";
import "owl.carousel/dist/assets/owl.theme.default.css";
import Recruit1 from "../../assets/image/faceds_work.png";
import Recruit2 from "../../assets/image/CIVIL_CONSTRUCTION.png";
import Recruit3 from "../../assets/image/hotelstaff.png";
import Recruit4 from "../../assets/image/heavy-work.png";

const IndustriesRecruit = () => {
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
        items: 4,
      },
    },
  };

  const [We, setSlider_1] = useState([]);
  const [Recruit, setSlider_2] = useState([]);
  const [Recruit_1, setSlider_3] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const WeData = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "We"
        );
        setSlider_1(WeData); // Assuming you want to slice the filtered data
        const RecruitData = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Recruit"
        );
        setSlider_2(RecruitData);
        const Recruit_1Data = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Recruit_1"
        );
        setSlider_3(Recruit_1Data);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  useEffect(() => {
    // Axios GET request to fetch data
    AboutData();
  }, []);


  return (
    <>
      <div className="container py-16" data-aos="zoom-in-down">
        {We.map((item, index) => (
          <div key={index} className="flex flex-col justify-center">
            <div className="uppercase text-center text-4xl">
              <h3>
                {item.name}{" "}
                <span className="text-primaryOrange">{item.caption}</span>
                {item.meta_title}
              </h3>
            </div>
            <div className="text-justify pt-8 px-4 text-lg">
              <p>{item.desc} </p>
            </div>
          </div>
        ))}
      </div>
      <div className="relative w-full h-[1000px] md:h-[450px] xl:h-96 mt-16 pt-4 xl:py-0">
        <div className="absolute top-0 left-0 h-96 w-full overflow-hidden hidden xl:block">
          {We.map((item, index) => (
            <img src={item.slider_image} alt="" className="w-full" />
          ))}
        </div>

        <div className="absolute top-0 left-0 h-[1000px] xl:h-96 md:h-96 w-full bg-black xl:opacity-60"></div>

        <div className="absolute xl:-top-5 inset-x-0 flex items-center justify-center">
          <div className="flex flex-col gap-10 items-center xl:flex-row md:flex-row">
            {Recruit.map((item, index) => (
              <div key={index} className="flex flex-col items-center">
                <div className="w-10 h-10 bg-primaryOrange rounded-full flex justify-center items-center text-white text-3xl font-semibold">
                  {item.position}
                </div>
                <div className="text-white pt-2 text-lg">
                  <h3>{item.name}</h3>
                </div>
              </div>
            ))}
          </div>
        </div>

        <div className="absolute inset-x-0 flex items-center justify-center xl:top-1/2 top-[600px] md:top-[180px]">
          <div className="w-full xl:w-4/6 h-96 flex flex-col px-4 xl:px-0">
            <div className="text-white text-3xl font-semibold text-center">
              {We.map((item, index) => (
                <h3>{item.title}</h3>
              ))}
            </div>
            <div className="pt-4">
              <OwlCarousel className="owl-theme" {...options}>
                {Recruit_1.map((item, index) => (
                  <div className="item h-72">
                    <img src={item.bannerimage} alt="" className="w-full" />
                  </div>
                ))}
              </OwlCarousel>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default IndustriesRecruit;
