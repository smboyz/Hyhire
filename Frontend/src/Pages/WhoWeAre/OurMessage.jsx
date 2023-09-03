import React, { useState, useEffect } from "react";
import axios from "axios";
import Dubai from "../../assets/image/Dubai.jpg";

const OurMessage = () => {
  const [message, setMessage] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const messageData = response.data.filter(
          (item) =>
            item.status === "Publish" && item.page_type === "Our Message"
        );
        setMessage(messageData); // Assuming you want to slice the filtered data
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
      {message.map((item, index) => (
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
              <h3>
                {item.meta_title}{" "}
                <span className="text-primaryOrange"> {item.meta_keyword}</span>
              </h3>
            </div>
            <div className="p-8 w-full border rounded-xl mt-4">
              <div className="text-3xl font-semibold flex flex-col">
                <h3>{item.title}</h3>
              </div>
              <div className="pt-8 text-gray-500 text-justify text-lg">
                {/* Use dangerouslySetInnerHTML to render HTML content */}
                <p dangerouslySetInnerHTML={{ __html: item.short_desc }}></p>
              </div>
              {/* <div className="pt-4">
                <p>
                  {" "}
                  Sincerely,
                  <br />
                  Hyhire International
                </p>
              </div> */}
            </div>
          </div>
        </>
      ))}
    </>
  );
};

export default OurMessage;
