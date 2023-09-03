import React, { useState, useEffect } from "react";
import axios from "axios";
import Dubai from "../../assets/image/Dubai.jpg";

const ContactUs = () => {
  const [contact, setContact] = useState({});
  const [formData, setFormData] = useState({
    name: "",
    email: "",
    subject: "",
    message: "",
  });
  const [successMessage, setSuccessMessage] = useState("");

  const AboutData = async () => {
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/navigations/"
      );
      // Filter the response data by status and page_type
      if (response.data) {
        const contactData = response.data.filter(
          (item) => item.status === "Publish" && item.page_type === "Contact"
        );
        setContact(contactData[0]);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  };

  const handleInputChange = (event) => {
    const { name, value } = event.target;
    setFormData((prevData) => ({
      ...prevData,
      [name]: value,
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post(
        "http://127.0.0.1:8000/api/contacts/",
        formData
      );

      // Check if the response status is 201 Created (or another success status)
      if (response.status === 201) {
        // Show a success message to the user
        setSuccessMessage("Submitted successfully!");

        // Optionally, reset the form fields
        setFormData({
          name: "",
          email: "",
          subject: "",
          message: "",
        });
      } else {
        // Handle other status codes (e.g., 400 for validation errors)
        console.error(
          "Server responded with an unexpected status code:",
          response.status
        );
      }
    } catch (error) {
      console.error("Error submitting form:", error);
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
          <img src={contact.slider_image} alt="" className="w-full h-full" />
        </div>
        <div className="w-full h-80 absolute top-0 left-0 bg-black opacity-70"></div>
        <div className="text-3xl text-white absolute inset-0 flex items-center justify-center">
          <h1>{contact.caption}</h1>
        </div>
      </div>
      <div className="py-16">
        <div className="container">
          <div className="flex flex-col justify-center items-center gap-10">
            <div className="flex flex-col xl:w-4/5 md:w-3/5 p-8 bg-gray-100 rounded-3xl">
              <div className="flex flex-col items-center">
                <div className="flex flex-col w-full xl:w-2/5"></div>
                <div className="flex gap-5 pt-8 flex-col xl:flex-row">
                  <div className="flex flex-col">
                    <div className="text-2xl border-primaryOrange text-start">
                      <p
                        dangerouslySetInnerHTML={{ __html: contact.short_desc }}
                      ></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div className="flex flex-col gap-4 w-full xl:w-4/5 p-8 bg-gray-100 rounded-3xl">
              {successMessage && (
                <div className="success-message" style={{ color: "green" }}>
                  {successMessage}
                </div>
              )}
              <form onSubmit={handleSubmit}>
                <div className="mb-4">
                  <input
                    type="text"
                    name="name"
                    placeholder="Your Full Name"
                    className="w-full p-2 rounded-md"
                    value={formData.name}
                    onChange={handleInputChange}
                    required
                  />
                </div>
                <div className="mb-4">
                  <input
                    type="email"
                    name="email"
                    placeholder="Your Email"
                    className="w-full p-2 rounded-md"
                    value={formData.email}
                    onChange={handleInputChange}
                    required
                  />
                </div>
                <div className="mb-4">
                  <input
                    type="text"
                    name="subject"
                    placeholder="Subject"
                    className="w-full p-2 rounded-md"
                    value={formData.subject}
                    onChange={handleInputChange}
                    required
                  />
                </div>
                <div className="mb-4">
                  <textarea
                    name="message"
                    placeholder="Your Message"
                    className="w-full p-2 rounded-md h-32"
                    value={formData.message}
                    onChange={handleInputChange}
                    required
                  />
                </div>
                <div className="pt-4 text-center">
                  <button className="bg-primaryOrange text-white px-4 py-2 tracking-wider font-semibold transition duration-300 hover:bg-primary hover:-translate-y-2">
                    SEND NOW
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <div>
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d19422.196693071248!2d85.3483455198775!3d27.696749501033544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb19249951bfed%3A0x76bde7261b0b41ff!2sHyhire%20International%20Pvt.Ltd!5e0!3m2!1sen!2snp!4v1690890529786!5m2!1sen!2snp"
          className="w-full h-96"
          allowFullScreen=""
          loading="lazy"
          referrerPolicy="no-referrer-when-downgrade"
        ></iframe>
      </div>
    </>
  );
};

export default ContactUs;
