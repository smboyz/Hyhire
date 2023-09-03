import React, { useState, useEffect } from "react";
import axios from "axios";
import Dubai from "../../assets/image/Dubai.jpg";
import OrganizationChart from "../../assets/image/organizationchart.png";

const OrganizationalChart = () => {
  const [chart, setChart] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const chartData = response.data.filter(
          (item) =>
            item.status === "Publish" && item.page_type === "Organizational"
        );
        setChart(chartData); // Assuming you want to slice the filtered data
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
      {chart.map((item, index) => (
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

          <div className="container py-16">
            <div className="text-3xl w-full text-center uppercase font-medium">
              <h3>{item.name}</h3>
            </div>
            <div className="w-full border p-4 rounded-xl mt-16">
              <img src={item.bannerimage} alt="" className="w-full" />
            </div>
          </div>
        </>
      ))}
    </>
  );
};

export default OrganizationalChart;
