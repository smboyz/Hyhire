import React, { useState, useEffect } from "react";
import axios from "axios";
import RightSide from "../../assets/image/right side.png";
import LowerImage from "../../assets/image/why-work-bottom-img.png";

const WhyWorkWithUs = () => {
  const [Work_1, setSlider_1] = useState([]);
  const [Work_2, setSlider_2] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const Work_1Data = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Work_1"
        );
        setSlider_1(Work_1Data); // Assuming you want to slice the filtered data
        const Work_2Data = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Work_2"
        );
        setSlider_2(Work_2Data);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  useEffect(() => {
    // Axios GET request to fetch data
    AboutData();
  }, []);

  //   console.log(Work_1, Work_2);

  return (
    <>
      {/* --------- top part ---------- */}
      <div className="container py-16">
        <div className="flex flex-col justify-center">
          {Work_1.map((item, index) => (
            <div key={index} className="uppercase text-center text-4xl">
              <h1>
                {item.caption}{" "}
                <span className="text-primaryOrange">{item.meta_title}</span>{" "}
                {item.meta_keyword}
              </h1>
            </div>
          ))}
        </div>

        <div className="flex flex-col gap-5 pt-8 items-center xl:flex-row">
          <div className="xl:w-3/5 flex flex-col flex-wrap gap-5 md:flex-row xl:flex-row">
            {Work_2.map((item, index) => (
              <div key={index} className="flex gap-5 flex-col xl:flex-row">
                <div
                  className=" bg-gray-200 xl:w-[354px] p-6 flex flex-col items-center justify-center text-center"
                  data-aos="zoom-in"
                >
                  <h3 className="uppercase text-2xl text-primaryOrange font-semibold">
                    {item.name}
                  </h3>
                  <p className="pt-2 text-md text-gray-500 text-lg">
                    {item.desc}
                  </p>
                </div>
              </div>
            ))}
          </div>

          <div className="xl:w-2/5 md:w-3/5">
            {Work_1.map((item, index) => (
              <div key={index}>
                <img src={item.bannerimage} className="w-full" />
              </div>
            ))}
          </div>
        </div>
      </div>

      {/* ---------lower part ---------- */}
      {Work_1.map((item, index) => (
        <div key={index} className="relative w-full h-128 xl:h-72">
          <div className="absolute top-0 left-0 w-full h-128 xl:h-72 overflow-hidden">
            <img
              src={item.slider_image}
              alt=""
              className="w-full h-128 xl:h-auto"
            />
          </div>

          <div className="absolute top-0 left-0 w-full h-128 xl:h-72 bg-black z-10 opacity-80"></div>

          <div className="absolute xl:top-0 top-28 left-0 w-full h-72 z-20 flex justify-between items-center">
            <div className="container flex flex-col justify-center items-center xl:gap-20 xl:flex-row">
              <div className="uppercase text-center text-3xl text-white pb-4 xl:pb-0">
                <h1>{item.title}</h1>
              </div>
              <div className="text-gray-300 font-thin xl:w-3/5 border-t xl:border-t-0 xl:border-l border-primaryOrange xl:pl-8 pt-4 xl:pt-0 text-justify px-4 xl:px-0 md:text-lg">
                <p>{item.desc} </p>
              </div>
            </div>
          </div>
        </div>
      ))}
    </>
  );
};

export default WhyWorkWithUs;
