import React, { useState, useEffect } from "react";
import axios from "axios";
import Dubai from "../../assets/image/Dubai.jpg";

const DemandLetter = () => {
  const [demand, setDemand] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const demandData = response.data.filter(
          (item) =>
            item.status === "Publish" && item.page_type === "Demand Letter"
        );
        setDemand(demandData[0]); // Assuming you want to slice the filtered data
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  useEffect(() => {
    // Axios GET request to fetch data
    AboutData();
  }, []);
  //   console.log(demand);

  return (
    <>
      <div className="w-full h-80 relative">
        <div className="w-full h-80 absolute top-0 left-0 overflow-hidden object-cover">
          <img src={demand.slider_image} alt="" className="w-full h-full" />
        </div>
        <div className="w-full h-80 absolute top-0 left-0 bg-black opacity-70"></div>
        <div className="text-3xl text-white absolute inset-0 flex items-center justify-center">
          <h1>{demand.caption}</h1>
        </div>
      </div>

      <div className="container py-16">
        <div className="text-4xl font-semibold">
          <h3>{demand.title}</h3>
        </div>
        <div className="pt-4 mt-5">
          <table className="w-full">
            <td dangerouslySetInnerHTML={{ __html: demand.short_desc }}></td>
          </table>
        </div>
      </div>
    </>
  );
};

export default DemandLetter;
