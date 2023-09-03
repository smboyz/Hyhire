import React, { useState, useEffect } from "react";
import axios from "axios";
import Dubai from "../../assets/image/Dubai.jpg";

const Mission = () => {
  const [mission, setMission] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const missionData = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Mission"
        );
        setMission(missionData); // Assuming you want to slice the filtered data
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
      {mission.map((item, index) => (
        <>
          <div key={index} className="w-full h-80 relative">
            <div className="w-full h-80 absolute top-0 left-0 overflow-hidden object-cover">
              <img src={item.slider_image} alt="" className="w-full h-full" />
            </div>
            <div className="w-full h-80 absolute top-0 left-0 bg-black opacity-70"></div>
            <div className="text-3xl text-white absolute inset-0 flex items-center justify-center">
              <h1>{item.caption}</h1>
            </div>
          </div>

          <div className="container w-full flex flex-col py-16">
            <div className="text-3xl font-semibold uppercase">
              <h3>{item.title}</h3>
            </div>
            <div className="xl:w-2/4 pt-4">
              <p dangerouslySetInnerHTML={{ __html: item.short_desc }}></p>
            </div>
          </div>
        </>
      ))}
    </>
  );
};

export default Mission;
