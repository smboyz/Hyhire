import React, { useState, useEffect } from "react";
import axios from "axios";
import Dubai from "../../assets/image/Dubai.jpg";
import CompanyDocs from "../../assets/image/company.jpg";
import ModalImage from "react-modal-image";

const Registration = () => {
  const [registration, setRegistration] = useState([]);
  const [registration_1, setRegistration_1] = useState([]);
  // const [Recruit_1, setSlider_3] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const registrationData = response.data.filter(
          (item) =>
            item.status === "Publish" && item.page_type === "Registration"
        );
        setRegistration(registrationData); // Assuming you want to slice the filtered data
        const registration_1Data = response.data.filter(
          (item) =>
            item.status === "Publish" && item.page_type === "Registration_1"
        );
        setRegistration_1(registration_1Data);
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
  console.log(registration);

  return (
    <>
      {registration.map((item, index) => (
        <div key={index} className="w-full h-80 relative">
          <div className="w-full h-80 absolute top-0 left-0 overflow-hidden object-cover">
            <img src={item.slider_image} alt="background" className="w-full h-full" />
          </div>
          <div className="w-full h-80 absolute top-0 left-0 bg-black opacity-70"></div>
          <div className="text-3xl text-white absolute inset-0 flex items-center justify-center">
            <h1>{item.name}</h1>
          </div>
        </div>
      ))}

      <div className="container py-16">
        <div className="flex flex-col justify-center xl:flex-row md:flex-row ">
          {registration_1.map((item, index) => (
            <div key={index} className="xl:w-1/4">
              <ModalImage small={item.bannerimage} large={item.bannerimage} />
            </div>
          ))}
        </div>
      </div>
    </>
  );
};

export default Registration;
