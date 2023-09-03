import React, { useState, useEffect } from "react";
import axios from "axios";
import OwlCarousel from "react-owl-carousel";
import "owl.carousel/dist/assets/owl.carousel.css";
import "owl.carousel/dist/assets/owl.theme.default.css";
import Malaysia from "../../assets/image/banner/Malaysia.jpg";
import Dubai from "../../assets/image/Dubai.jpg";
import Brunei from "../../assets/image/Brunei.jpg";

const Banner = () => {
  const options = {
    loop: true,
    center: false,
    items: 3,
    margin: 0,
    autoplay: true,
    dots: false,
    autoplayTimeout: 8000,
    smartSpeed: 850,
    nav: false,
    responsive: {
      0: {
        items: 1,
      },
      768: {
        items: 1,
      },
      1280: {
        items: 1,
      },
      1400: {
        items: 1,
      },
    },
  };

  const [slider, setSlider] = useState([]);

  const SliderData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const filteredData = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Slider"
        );
        setSlider(filteredData); // Assuming you want to slice the filtered data
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  useEffect(() => {
    // Axios GET request to fetch data
    SliderData();
  }, []);

  // console.log(slider);

  return (
    <>
      <div className="w-full overflow-hidden">
        <div className="relative w-full h-[410px] xl:h-[90vh]">
          {/* Carousel image */}
          <OwlCarousel
            className="owl-theme absolute top-0 left-0 "
            {...options}
          >
            {slider.map((image, index) => (
              <div className="item w-full overflow-hidden" key={index}>
                <div className="relative w-full h-[80vh] xl:h-[80vh]">
                  <img
                    src={image.slider_image}
                    alt=""
                    className="absolute w-full h-full"
                  />
                  <div className="absolute w-full h-full bg-black opacity-60"></div>
                </div>

                <div className="container text-white absolute top-24 left-0 z-10">
                  <div className="font-semibold text-5xl xl:text-7xl text-start xl:w-2/4 md:w-3/4 ">
                    <h1>{image.title}</h1>
                  </div>
                  <div className=" font-light text-lg text-start  w-3/4 xl:w-2/3 pt-2">
                    <h2>{image.caption}</h2>
                  </div>
                </div>
              </div>
            ))}
          </OwlCarousel>
        </div>
      </div>
    </>
  );
};

export default Banner;
