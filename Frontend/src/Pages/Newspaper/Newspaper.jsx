import React, { useState, useEffect } from "react";
import axios from "axios";
import NewsAd from "../../assets/image/newsad.jpg";
import Dubai from "../../assets/image/Dubai.jpg";
import ModalImage from "react-modal-image";

const Gallery = () => {
  const [news, setNews] = useState([]);
  const [new_1, setNew_1] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const itemsPerPage = 3; // Number of items to display per page
  const [Pages, setTotalPages] = useState(1);

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );

      // Filter the response data by status and page_type
      if (response.data) {
        const newsData = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Newspaper"
        );
        setNews(newsData[0]); // Assuming you want to slice the filtered data

        let newspapers = [...response.data]
        newspapers = newspapers.reverse()

        const new_1Data = newspapers.filter(
          (item) =>
            item.status === "Publish" && item.page_type === "Newspaper_1"
        );

        // Calculate the total number of pages based on the items per page
        setTotalPages(Math.ceil(new_1Data.length / itemsPerPage));

        // Calculate the start and end indices for the current page
        const startIndex = (currentPage - 1) * itemsPerPage;
        const endIndex = startIndex + itemsPerPage;

        // Slice the data to display only the items for the current page
        const paginatedNew_1Data = new_1Data.slice(startIndex, endIndex);

        setNew_1(paginatedNew_1Data);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  useEffect(() => {
    // Axios GET request to fetch data
    AboutData();
  }, [currentPage]);

  // const handlePageChange = (page) => {
  //   setCurrentPage(page);
  // };

  return (
    <>
      <div className="w-full h-80 relative">
        <div className="w-full h-80 absolute top-0 left-0 overflow-hidden object-cover">
          <img src={news.slider_image} alt="" className="w-full h-full" />
        </div>
        <div className="w-full h-80 absolute top-0 left-0 bg-black opacity-70"></div>
        <div className="text-3xl text-white absolute inset-0 flex items-center justify-center">
          <h1>{news.name}</h1>
        </div>
      </div>

      <div className="py-16">
        <div className="container">
          <div className="flex gap-10 w-full flex-col xl:flex-row md:flex-row md:flex-wrap md:justify-center">
            {new_1.map((item, index) => (
              <div
                key={index}
                className="xl:w-1/4 md:w-2/5 xl:h-[450px] bg-red-400"
              >
                <div className="relative w-full h-96">
                  <ModalImage
                    small={item.bannerimage}
                    large={item.bannerimage}
                    className="absolute w-full h-full object-cover"
                  />
                </div>

                <div className="bg-secondaryDarkBlue py-4 flex justify-center items-center">
                  <div className="text-white">
                    <h1>{item.caption}</h1>
                    <h1>{item.title}</h1>
                  </div>
                </div>
              </div>
            ))}
          </div>
          <nav className="flex justify-center items-center space-x-2 pt-8">
            <button
              className="text-gray-500 hover:text-blue-600 p-4 inline-flex items-center gap-2 rounded-md"
              onClick={() => setCurrentPage(currentPage - 1)}
              disabled={currentPage === 1}
            >
              <span aria-hidden="true">«</span>
              <span className="sr-only">Previous</span>
            </button>
            {Array.from({ length: Pages }).map((_, index) => (
              <button
                key={index + 1}
                className={`w-10 h-10 ${currentPage === index + 1
                    ? "bg-blue-500 text-white"
                    : "text-gray-500 hover:text-blue-600"
                  } p-4 inline-flex items-center text-sm font-medium rounded-full`}
                onClick={() => setCurrentPage(index + 1)}
              >
                {index + 1}
              </button>
            ))}
            <button
              className="text-gray-500 hover:text-blue-600 p-4 inline-flex items-center gap-2 rounded-md"
              onClick={() => setCurrentPage(currentPage + 1)}
              disabled={currentPage === Pages}
            >
              <span className="sr-only">Next</span>
              <span aria-hidden="true">»</span>
            </button>
          </nav>
        </div>
      </div>
    </>
  );
};

export default Gallery;
