import React, { useState, useEffect } from "react";
// import React from 'react'
import Logo from '../assets/image/logo.png'
import axios from 'axios';
import { Link } from "react-router-dom";


const Footer = () => {
    const [data, setData] = useState()

    const headerData = async () =>{
        try {
            const response = await axios.get('http://127.0.0.1:8000/api/globals/');
            // Handle the response data here
            response.data && setData(response.data[0]);
        } catch (error) {
            console.error("Error fetching data:", error);
        }
    
    }
    
    useEffect(() => {
        // Axios GET request to fetch data
        headerData();
    
    }, []);
    // console.log(data);
    
    return (
        <>
            <div className='bg-secondaryDarkBlue py-8'>
                <div className="container">
                    <div className='flex justify-between xl:items-center flex-col gap-8 xl:flex-row'>
                        {/* -------- Logo Area -------- */}
                        <div className='flex flex-col items-center xl:items-start'>
                            <div className=' w-3/6 md:w-1/4 xl:w-[150px]'>
                                {data && <img src={data.logo} alt="" className='w-full' />}
                            </div>
                            <div className='flex gap-2 items-center text-white mt-6'>
                                <button className='bg-primaryLightBlue text-white px-4 py-2 rounded-md'>
                                    {data && <a href={data.brochure} target='_blank' >{data.brochure_name}</a>}
                                </button>
                            </div>
                        </div>

                        {/* <div className='flex flex-col xl:flex-row md:flex-row md:justify-between'> */}

                            {/* -------- contact area -------- */}
                            <div className='flex flex-col mb-6 xl:w-1/5'>
                                <div className='text-white text-xl font-semibold border-b border-primaryYellowBrand pb-2'>
                                    <p>CONTACT</p>
                                </div>
                                <div className='pt-2'>
                                    <div className='flex gap-2 items-center clear-left text-white font-thin'>
                                        <i class="fa-solid fa-location-dot text-primaryYellowBrand text-lg"></i>
                                        {data && <p>{data.SiteAddress}</p>}
                                    </div>
                                    <div className='flex gap-2 items-center text-white font-thin'>
                                        <i class="fa-regular fa-paper-plane  text-primaryYellowBrand text-lg"></i>
                                        {data && <p>{data.SiteBox}</p>}
                                    </div>
                                    <div className='flex gap-2 items-center text-white font-thin'>
                                        <i class="fa-solid fa-phone  text-primaryYellowBrand text-lg"></i>
                                        {data && <p>{data.SiteContact}</p>}
                                    </div>
                                    <div className='flex gap-2 items-center text-white font-thin'>
                                        <i class="fa-solid fa-fax  text-primaryYellowBrand text-lg"></i>
                                        {data && <p>{data.Sitefax}</p>}
                                    </div>
                                    <div className='flex gap-2 items-center text-white font-thin'>
                                        <i class="fa-regular fa-envelope  text-primaryYellowBrand text-lg"></i>
                                        {data && <p>{data.SiteEmail}</p>}
                                    </div>
                                </div>
                            </div>

                            {/* -------- quick links -------- */}
                            <div className='flex flex-col xl:w-1/5'>
                                <div className='text-white text-xl font-semibold border-b border-primaryYellowBrand pb-2'>
                                    <p>QUICK LINKS</p>
                                </div>
                                <div className='pt-2'>
                                    <div className='flex gap-2 items-center clear-left text-white font-thin'>
                                        <i class="fa-solid fa-arrow-right-long text-primaryYellowBrand text-lg"></i>
                                        <Link to="/"> Home</Link>
                                    </div>
                                    <div className='flex gap-2 items-center clear-left text-white font-thin'>
                                        <i class="fa-solid fa-arrow-right-long text-primaryYellowBrand text-lg"></i>
                                        <Link to='/aboutcompany'>About Us</Link>
                                    </div>
                                    <div className='flex gap-2 items-center clear-left text-white font-thin'>
                                        <i class="fa-solid fa-arrow-right-long text-primaryYellowBrand text-lg"></i>
                                        <Link to='/demandletter'>Demand Letter</Link>
                                    </div>
                                    <div className='flex gap-2 items-center clear-left text-white font-thin'>
                                        <i class="fa-solid fa-arrow-right-long text-primaryYellowBrand text-lg"></i>
                                        <Link to='/advertisement'>Newspaper Vacancy</Link>
                                    </div>
                                    <div className='flex gap-2 items-center clear-left text-white font-thin'>
                                        <i class="fa-solid fa-arrow-right-long text-primaryYellowBrand text-lg"></i>
                                        <Link to='/organizationalchart'>Organization Chart</Link>
                                    </div>
                                    <div className='flex gap-2 items-center clear-left text-white font-thin'>
                                        <i class="fa-solid fa-arrow-right-long text-primaryYellowBrand text-lg"></i>
                                        <Link to='/contact'>Contact Us</Link>
                                    </div>
                                </div>
                            </div>

                        {/* </div> */}


                        {/* -------- google map -------- */}
                        <div className='flex flex-col'>
                            <div className='text-white text-xl font-semibold border-b border-primaryYellowBrand pb-2'>
                                <p>GOOGLE MAP</p>
                            </div>
                            <div>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d19422.196693071248!2d85.3483455198775!3d27.696749501033544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb19249951bfed%3A0x76bde7261b0b41ff!2sHyhire%20International%20Pvt.Ltd!5e0!3m2!1sen!2snp!4v1690890529786!5m2!1sen!2snp" allowFullScreen="" loading="lazy" referrerPolicy="no-referrer-when-downgrade" className='w-full xl:w-[300px] h-80 xl:h-[180px]'></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {/* -------- Copyright Area --------  */}
            <div className='bg-primaryLightBlue'>
                <div className='text-center text-xs py-2 text-white'>
                    <p>Copyright@hyhireinternational2003</p>
                </div>
            </div>
        </>
    )
}

export default Footer