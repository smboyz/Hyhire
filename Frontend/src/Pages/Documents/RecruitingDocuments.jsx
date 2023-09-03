import React, { useState, useEffect } from "react";
import axios from "axios";
import Dubai from "../../assets/image/Dubai.jpg";

const RecruitingDocuments = () => {
  const [document, setDocument] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const documentData = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Documents"
        );
        setDocument(documentData[0]); // Assuming you want to slice the filtered data
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
      <div className="w-full h-80 relative">
        <div className="w-full h-80 absolute top-0 left-0 overflow-hidden object-cover">
          <img src={document.slider_image} alt="" className="w-full h-full" />
        </div>
        <div className="w-full h-80 absolute top-0 left-0 bg-black opacity-70"></div>
        <div className="text-3xl text-white absolute inset-0 flex items-center justify-center">
          <h1>{document.caption}</h1>
        </div>
      </div>

      <div className="container py-16 border-b">
        <div className="flex flex-col xl:w-4/5">
          <div className="uppercase text-3xl font-semibold">
            <h1>{document.title}</h1>
          </div>
          <div className="pt-8">
            <p>{document.desc} </p>
          </div>
          <div className="pt-4">
            <p dangerouslySetInnerHTML={{ __html: document.short_desc }}></p>
          </div>
        </div>
      </div>
    </>
  );
};

export default RecruitingDocuments;
