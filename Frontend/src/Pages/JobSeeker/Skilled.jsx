import React, { useState, useEffect } from "react";
import axios from "axios";
import Dubai from "../../assets/image/Dubai.jpg";
import UnskilledImage from "../../assets/image/unskilled.webp";

const Skilled = () => {
  const [skilled, setSkilled] = useState([]);
  const [skilled_1, setSkilled_1] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const skilledData = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "SKILLED"
        );
        setSkilled(skilledData); // Assuming you want to slice the filtered data

        const skilled_1Data = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "SKILLED 3"
        );
        setSkilled_1(skilled_1Data);
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
      {skilled.map((skill, index) => (
        <>
          <div key={index} className="w-full h-80 relative">
            <div className="w-full h-80 absolute top-0 left-0 overflow-hidden object-cover">
              <img src={skill.slider_image} alt="" className="w-full" />
            </div>
            <div className="w-full h-80 absolute top-0 left-0 bg-black opacity-70"></div>
            <div className="text-3xl text-white absolute inset-0 flex items-center justify-center">
              <h1>{skill.caption}</h1>
            </div>
          </div>

          <div className="container py-16">
            <div className="flex gap-60 items-center flex-col xl:flex-row">
              <div className="xl:w-1/4 flex flex-col">
                <div className="text-2xl font-semibold border-b border-primaryOrange pb-2">
                  <h3>{skill.title}</h3>
                </div>
                <div className="pt-8 text-gray-500">
                  <p>{skill.desc}</p>
                </div>
              </div>
              <div className="xl:w-3/4 bg-gray-200 p-12 rounded-xl">
                <div className="flex gap-10 flex-wrap">
                  {skilled_1.map((item, index) => (
                    <div className="w-72 h-80 xl:w-[234px] xl:h-80 relative">
                      <img
                        src={item.bannerimage}
                        alt=""
                        className="absolute w-full h-full"
                      />
                      <div className="absolute bottom-0 left-0 h-10 w-full bg-primaryYellowBrand flex justify-center items-center text-black font-semibold">
                        {item.caption}
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </>
      ))}
    </>
  );
};

export default Skilled;
