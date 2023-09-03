import React, { useState, useEffect } from "react";
import axios from "axios";
import Dubai from "../../assets/image/Dubai.jpg";
import AboutUsImage from "../../assets/image/aboutus-bg.png";

const AboutCompany = () => {
  const [about, setAbout] = useState([]);
  // const [Recruit, setSlider_2] = useState([]);
  // const [Recruit_1, setSlider_3] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const aboutData = response.data.filter(
          (item) =>
            item.status === "Publish" && item.page_type === "About Company"
        );
        setAbout(aboutData); // Assuming you want to slice the filtered data
        //   const RecruitData = response.data.filter(
        //     (item) => item.status === "Publish" && item.page_type === "Recruit"
        //   );
        //   setSlider_2(RecruitData);
        //   const Recruit_1Data = response.data.filter(
        //     (item) => item.status === "Publish" && item.page_type === "Recruit_1"
        //   );
        //   setSlider_3(Recruit_1Data);
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
      {about.map((item, index) => (
        <>
          <div key={index} className="w-full h-80 relative">
            <div className="w-full h-80 absolute top-0 left-0 overflow-hidden">
              <img src={item.slider_image} alt="" className="w-full h-full" />
            </div>

            <div className="w-full h-80 absolute top-0 left-0 bg-black opacity-70"></div>

            <div className="text-3xl text-white absolute inset-0 flex items-center justify-center">
              <h1>{item.caption}</h1>
            </div>
          </div>
          <div className="container py-16">
            <div className="flex gap-20 items-center flex-col xl:flex-row">
              <div className="xl:w-1/2  p-4 flex flex-col">
                <div className="text-center text-xl font-semibold">
                  <h3>
                    <span className=" text-primaryOrange text-3xl">
                      {item.title}
                    </span>{" "}
                    {item.meta_title}
                  </h3>
                </div>
                <div className="mt-4 text-gray-500 bg-gray-200 xl:p-12 rounded-lg text-justify p-4 md:text-lg md:p-8 ">
                  <p>{item.desc} </p>
                </div>
              </div>
              <div className="w-1/2 rounded-tl-[200px] rounded-br-[200px] overflow-hidden hidden xl:block">
                <img src={item.bannerimage} alt="" className="w-full" />
              </div>
            </div>
          </div>
        </>
      ))}
    </>
  );
};

export default AboutCompany;
