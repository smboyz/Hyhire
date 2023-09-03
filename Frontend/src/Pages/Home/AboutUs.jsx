import React, { useState, useEffect } from "react";
import axios from "axios";
import ConstructionImage from "../../assets/image/lowerBgAboutUs.jpg";
import { Link } from "react-router-dom";

const AboutUs = () => {
  const [about_1, setSlider_1] = useState([]);
  const [about_2, setSlider_2] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const about_1Data = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Home/About"
        );
        setSlider_1(about_1Data); // Assuming you want to slice the filtered data
        const about_2Data = response.data.filter(
          (item) =>
            item.status === "Publish" && item.page_type === "Home/About_1"
        );
        setSlider_2(about_2Data);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  useEffect(() => {
    // Axios GET request to fetch data
    AboutData();
  }, []);

  //   console.log(about_1, about_2);

  return (
    <>
      {/* -------- Top Area --------- */}
      <div className="container">
        {about_1.map((item, index) => (
          <div key={index} className="flex flex-col items-center py-16">
            <div className="xl:w-3/5 text-center text-3xl font-semibold">
              <h3>
                <span className=" text-primaryOrange text-4xl">
                  {item.caption}{" "}
                </span>
                {item.title}
              </h3>
            </div>

            <div className=" px-5 xl:px-0 text-justify xl:w-4/5 text-gray-500 pt-8 md:text-lg">
              <p>{item.desc}</p>
            </div>

            <div className="pt-10">
              <Link to="/AboutCompany">
                <button className="bg-primaryOrange text-white px-6 py-2 tracking-wider font-semibold transition duration-300 hover:bg-primary hover:-translate-y-2 rounded-lg">
                  {" "}
                  ABOUT US
                </button>
              </Link>
            </div>
          </div>
        ))}
      </div>

      {/*  --------- Lower Area -------- */}

      <div className="relative w-full xl:h-[450px] h-[800px]">
        <div className="absolute top-0 left-0 w-full h-[800px] xl:h-[450px] xl:overflow-hidden">
          {about_1.map((item, index) => (
            <img src={item.slider_image} alt="" className="w-full h-[800px]" />
          ))}
        </div>

        <div className="absolute top-0 left-0 w-full h-[800px] xl:h-[450px] bg-black opacity-80"></div>

        <div className="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 xl:w-4/5 w-4/5">
          <div className="flex gap-5 flex-col xl:flex-row md:flex-col">
            {about_2.map((item, index) => (
              <div
                key={index}
                className="bg-white  xl:w-full py-4 px-4 rounded-tl-3xl flex gap-2 items-center p-2 md:py-8"
                data-aos="zoom-in"
              >
                <div className=" text-primaryOrange text-4xl">
                  <i class="fa-solid fa-sitemap"></i>
                </div>
                <div className="flex flex-col gap-2">
                  <h3 className="text-lg uppercase font-semibold">
                    {item.name}
                  </h3>
                  <p className="text-sm md:text-lg text-gray-500">
                    {item.desc}
                  </p>
                </div>
              </div>
            ))}
            {/* <div
              className="bg-white xl:w-full py-4 px-4 rounded-tl-3xl rounded-br-3xl flex gap-2 items-center p-2 md:py-8"
              data-aos="zoom-in"
            >
              <div className=" text-primaryOrange text-4xl">
                <i class="fa-solid fa-sitemap"></i>
              </div>
              <div className="flex flex-col gap-2">
                <h3 className="text-lg uppercase font-semibold">experience</h3>
                <p className="text-sm md:text-lg text-gray-500">
                  In an economic environment that is dynamic and continuously
                  evolving, we search, select and hire the best talents. At
                  Skyward, we dedicate ourselves to providing standout
                  candidates specialized for specific industries and functional
                  areas.{" "}
                </p>
              </div>
            </div>

            <div
              className="bg-white xl:w-full py-4 px-4 rounded-br-3xl flex gap-2 items-center p-2 md:py-8"
              data-aos="fade-up"
            >
              <div className=" text-primaryOrange text-4xl">
                <i class="fa-solid fa-sitemap"></i>
              </div>
              <div className="flex flex-col gap-2">
                <h3 className="text-lg uppercase font-semibold">
                  cost effective
                </h3>
                <p className="text-sm text-gray-500 md:text-lg">
                  In an economic environment that is dynamic and continuously
                  evolving, we search, select and hire the best talents. At
                  Skyward, we dedicate ourselves to providing standout
                  candidates specialized for specific industries and functional
                  areas.{" "}
                </p>
              </div>
            </div> */}
          </div>
        </div>
      </div>
    </>
  );
};

export default AboutUs;
