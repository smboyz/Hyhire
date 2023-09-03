import React, { useState, useEffect } from "react";
import axios from "axios";
import Dubai from "../../assets/image/Dubai.jpg";

const RecruitmentProcedure = () => {
  const [procedure, setProcedure] = useState([]);
  const [procedure_1, setProcedure_1] = useState([]);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const procedureData = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Procedure"
        );
        setProcedure(procedureData[0]); // Assuming you want to slice the filtered data

        const procedure_1Data = response.data.filter(
          (item) =>
            item.status === "Publish" && item.page_type === "Procedure_1"
        );
        setProcedure_1(procedure_1Data);
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
          <img src={procedure.slider_image} alt="" className="w-full h-full" />
        </div>
        <div className="w-full h-80 absolute top-0 left-0 bg-black opacity-70"></div>
        <div className="text-3xl text-white absolute inset-0 flex items-center justify-center">
          <h1>{procedure.caption}</h1>
        </div>
      </div>
      <div className="py-16">
        <div className="container">
          <div className="text-center font-semibold text-xl">
            <h3>{procedure.title}</h3>
          </div>
          <div className="pt-8 text-gray-500  text-center xl:px-32">
            <p>{procedure.desc} </p>
          </div>

          <div className="flex xl:gap-14 justify-center xl:flex-row xl:flex-wrap xl:px-32 md:flex-col flex-col">
            {procedure_1.map((item, index) => (
              <div
                key={index}
                className="relative  p-8 xl:w-48  xl:p-4 bg-gray-200 mt-16 rounded-xl flex justify-center items-center md:justify-start"
              >
                <div className="absolute left-5 xl:top-10 xl:-left-6 w-12 h-12 bg-primaryOrange flex justify-center items-center rounded-full text-white font-bold ">
                  {item.position}
                </div>
                <div className="xl:ps-4 ps-14 text-start xl:w-4/8 font-semibold">
                  <h3>{item.title}</h3>
                </div>
              </div>
            ))}
            {/* <div className="relative p-8 xl:w-48  xl:p-4 bg-gray-200 mt-4 xl:mt-16 rounded-xl flex justify-center items-center md:justify-start">
              <div className="absolute left-5 xl:top-10  xl:-left-6 w-12 h-12 bg-primaryOrange flex justify-center items-center rounded-full text-white font-bold ">
                2
              </div>
              <div className="xl:ps-4 ps-16 text-start xl:w-4/8 font-semibold pt-2">
                <h3>LEGAL DOCUMENTATION & REGISTRATION</h3>
              </div>
            </div>

            <div className="relative p-8 xl:w-48  xl:p-4 bg-gray-200 mt-4 xl:mt-16 rounded-xl flex justify-center items-center md:justify-start">
              <div className="absolute left-5 xl:top-10  xl:-left-6 w-12 h-12 bg-primaryOrange flex justify-center items-center rounded-full text-white font-bold ">
                3
              </div>
              <div className="xl:ps-4 ps-16 text-start w-4/8 font-semibold pt-2">
                <h3>PREPARE SCHEDULE OF INTERVIEW DATES</h3>
              </div>
            </div>

            <div className="relative p-8 w-full xl:w-48  xl:p-4 bg-gray-200 mt-4 xl:mt-16 rounded-xl flex justify-center items-center md:justify-start">
              <div className="absolute left-5 xl:top-10  xl:-left-6 w-12 h-12 bg-primaryOrange flex justify-center items-center rounded-full text-white font-bold ">
                4
              </div>
              <div className="xl:ps-4 ps-16 text-start w-4/8 font-semibold">
                <h3>OFFER LETTERS, MEDICAL & RELEVANT DOCUMENTS</h3>
              </div>
            </div>
          </div>

          <div className="flex flex-col xl:flex-row xl:gap-14 justify-center">
            <div className="relative  p-8 xl:w-48 xl:p-4 bg-gray-200 mt-4 xl:mt-16 rounded-xl flex justify-start items-center order-4 xl:order-none md:justify-start">
              <div className="absolute left-5 xl:top-10 xl:-left-6 w-12 h-12 bg-primaryOrange flex justify-center items-center rounded-full text-white font-bold ">
                8
              </div>
              <div className="xl:ps-4 ps-16 text-start xl:w-4/8 font-semibold">
                <h3>DEPARTURE</h3>
              </div>
            </div>

            <div className="relative p-8 w-full xl:w-48 xl:p-4 bg-gray-200 mt-4 xl:mt-16 rounded-xl flex justify-center items-center order-3 xl:order-none md:justify-start">
              <div className="absolute left-5 xl:top-10  xl:-left-6 w-12 h-12 bg-primaryOrange flex justify-center items-center rounded-full text-white font-bold ">
                7
              </div>
              <div className="xl:ps-4 ps-16 text-start w-4/8 font-semibold">
                <h3>OFFER LETTERS, MEDICAL & RELEVANT DOCUMENTS</h3>
              </div>
            </div>

            <div className="relative xl:w-48 xl:p-4 p-8 bg-gray-200 mt-4 xl:mt-16 rounded-xl order-2 xl:order-none flex justify-center items-center md:justify-start">
              <div className="absolute left-5 xl:top-6  xl:-left-6 w-12 h-12 bg-primaryOrange flex justify-center items-center rounded-full text-white font-bold ">
                6
              </div>
              <div className="ps-16 xl:ps-4 text-start w-4/8 font-semibold">
                <h3>VISA OTHER PROCESSES & ORIENTATION</h3>
              </div>
            </div>

            <div className="relative p-8 w-full xl:w-48 xl:p-4 bg-gray-200 mt-4 xl:mt-16 rounded-xl flex justify-center items-center order-1 xl:order-none md:justify-start">
              <div className="absolute left-5 xl:top-10  xl:-left-6 w-12 h-12 bg-primaryOrange flex justify-center items-center rounded-full text-white font-bold ">
                5
              </div>
              <div className="xl:ps-4 ps-16 text-start w-4/8 font-semibold">
                <h3>OFFER LETTERS, MEDICAL & RELEVANT DOCUMENTS</h3>
              </div>
            </div> */}
          </div>
        </div>
      </div>
    </>
  );
};

export default RecruitmentProcedure;
