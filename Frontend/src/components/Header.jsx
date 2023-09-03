import React, { useState, useEffect } from "react";
import { Routes, Route, Link } from "react-router-dom";
import axios from 'axios';


import Home from "../Pages/Home/Home";
import AboutCompany from "../Pages/WhoWeAre/AboutCompany";
import Registration from "../Pages/WhoWeAre/Registration";
import OurMessage from "../Pages/WhoWeAre/OurMessage";
import OurCommitment from "../Pages/WhoWeAre/OurCommitment";
import Vision from "../Pages/WhoWeAre/Vision";
import Mission from "../Pages/WhoWeAre/Mission";
import OrganizationalChart from "../Pages/WhoWeAre/OrganizationalChart";
import Unskilled from "../Pages/JobSeeker/Unskilled";
import Skilled from "../Pages/JobSeeker/Skilled";
import Semiskilled from "../Pages/JobSeeker/Semiskilled";
import Highlyskilled from "../Pages/JobSeeker/Highlyskilled";
import DemandLetter from "../Pages/Documents/DemandLetter";
import RecruitmentProcedure from "../Pages/Documents/RecruitmentProcedure";
import RecruitingDocuments from "../Pages/Documents/RecruitingDocuments";
import ContactUs from "../Pages/Contact/ContactUs";
import Gallery from "../Pages/Gallery/Gallery";
import Newspaper from "../Pages/Newspaper/Newspaper";

const Header = () => {
  const [whoWeAre, setWhoWeAre] = useState(false);
  const [jobseeker, setJobseeker] = useState(false);
  const [documents, setDocuments] = useState(false);
  const [parentId, setParentId] = useState(null);

  const [nav, setNav] = useState(false)

  const handleNav = () => {
    setNav(!nav)
  }
  const closeNav = () => {
    setNav(!nav)
  }

  const toggleWhoWeAre = () => {
    if (whoWeAre == true) {
      setWhoWeAre(false)

    } else {
      setWhoWeAre(true)
      setJobseeker(false)
      setDocuments(false)

    }
  }
  const toggleJobSeeker = () => {
    if (jobseeker == true) {
      setJobseeker(false)
    } else {
      setJobseeker(true)
      setWhoWeAre(false)
      setDocuments(false)
    }
  }
  const toggleDocuments = () => {
    if (documents == true) {
      setDocuments(false)
    } else {
      setDocuments(true)
      setJobseeker(false)
      setWhoWeAre(false)
    }
  };
  // const [subMenu, setSubMenu] = useState(true)
  // const handleSubMenu = (parentItemId) => {
  //   setSubMenu(!subMenu)
  //   setSubMenu2(true)
  //   setSubMenu3(true)
  //   setParentId(47)
  // }

  // const [subMenu2, setSubMenu2] = useState(true)
  // const handleSubMenu2 = () => {
  //   setSubMenu2(!subMenu2)
  //   setSubMenu(true)
  //   setSubMenu3(true)
  // }

  // const [subMenu3, setSubMenu3] = useState(true)
  // const handleSubMenu3 = () => {
  //   setSubMenu3(!subMenu3)
  //   setSubMenu(true)
  //   setSubMenu2(true)
  // }

  // const handleSubMenu4 = (parentItemId) => {
  //   setSubMenu((prevSubMenu) => !prevSubMenu);
  //   setSubMenu2(true);
  //   setSubMenu3(true);
  //   setParentId(parentItemId);
  // }

  const [data, setData] = useState([])
  const [navigation, setNavigation] = useState([]);


  const headerData = async () => {
    try {
      const response = await axios.get('http://127.0.0.1:8000/api/globals/');
      // Handle the response data here
      response.data && setData(response.data[0]);

      // Fetch navigation data based on parentId and page_type
      const navigationResponse = await axios.get(
        "http://127.0.0.1:8000/api/navigations/",
        {
          params: {
            parent_id: parentId,      // Set the parentId as a parameter
            page_type: "Group",       // Filter by page_type        
          }
        }
      );

      if (navigationResponse.data) {
        const navigationData = navigationResponse.data.filter(
          (item) => item.status === "Publish"
        );
        setNavigation(navigationData);
      }
    }
    catch (error) {
      console.error("Error fetching data:", error);
    }
  }
  useEffect(() => {
    // Axios GET request to fetch data
    headerData();
  }, [parentId]);
  // console.log(data);
  console.log(navigation);

  return (
    <>

      {/* -------- Top Header -------- */}
      <div className="bg-secondaryDarkBlue hidden xl:block lg:block">
        <div className="container flex justify-between items-center py-4 xl:py-2">
          {/* --------- License No ---------- */}
          <div className="text-white text-sm hidden xl:block lg:block">
            <p>{data.Sitelicence}</p>
          </div>


          {/* -------- Social Links---------- */}
          <div className="hidden xl:block lg:block">
            <div className="flex text-white gap-4 text-lg">
              <i class="fa-brands fa-facebook"></i>
              <i class="fa-brands fa-instagram"></i>
              <i class="fa-brands fa-twitter"></i>
            </div>
          </div>
        </div>
      </div>

      {/* -------- Nav Bar --------- */}
      <div className="bg-primaryLightBlue sticky top-0 left-0 z-30 py-4 xl:py-2">
        <div className="container flex justify-between items-center">
          {/* --------- Logo ----------- */}
          <div className="w-1/4 xl:w-[160px] lg:w-[140px] md:w-[100px]">
            <Link to="/">
              <img src={data.logo} alt="" className="w-full" />
            </Link>
          </div>

          {/* -------- Hamburger Menu -------- */}
          <div className='xl:hidden lg:block' onClick={handleNav}>
            {nav ? <i className="fa-solid fa-xmark text-white text-2xl"></i> : <i className="fa-solid fa-bars text-white text-2xl"></i>}
          </div>



          {/* Desktop */}
          <div className={` xl:block xl:static xl:w-auto ${nav ? 'fixed left-0 top-0 w-[70%] md:w-[40%] bg-secondaryDarkBlue  h-full ease-in-out duration-300 ps-8 pt-16' : 'fixed left-[-100%] '}`}>
            <ul className="flex justify-between xl:gap-10 relative xl:flex-row flex-col">
              <li className="text-white hover:text-primaryOrange transition duration-300 uppercase xl:text-sm  xl:py-8 py-4">
                <Link to="/" className="font-semibold">Home</Link>
              </li>
              {navigation.map((nav) => (
                <React.Fragment key={nav.id} >
                  {nav.id !== 1 && (
                    <React.Fragment>
                      {nav.id === 101 && (
                        <li className="text-white hover:text-primaryOrange transition duration-300 uppercase xl:text-sm font-semibold xl:py-8 py-4">
                          <Link to="/gallery">{nav.name}</Link>
                        </li>
                      )}
                      {nav.id === 96 && (
                        <li className="text-white hover:text-primaryOrange transition duration-300 uppercase xl:text-sm font-semibold xl:py-8 py-4">
                          <Link to="/advertisement">{nav.name}</Link>
                        </li>
                      )}
                      {nav.id === 110 && (
                        <li className="text-white hover:text-primaryOrange transition duration-300 uppercase xl:text-sm font-semibold xl:py-8 py-4">
                          <Link to="/contact">{nav.name}</Link>
                        </li>
                      )}
                      {nav.id === 47 && (
                        <Link
                          onMouseEnter={() => { if (window.innerWidth > 768) { setWhoWeAre(true) } }}
                          onMouseLeave={() => { if (window.innerWidth > 768) { setWhoWeAre(false) } }}
                        >
                          <li className="text-white hover:text-primaryOrange transition duration-300 uppercase xl:text-sm font-semibold xl:py-8 py-4" onClick={toggleWhoWeAre}>
                            {nav.name} <i class="fa-solid fa-chevron-down"></i>
                          </li>

                          {whoWeAre && (
                            <div className="xl:absolute top-[84px] left-4 bg-white z-50 w-60  hover:text-gray-700 xl:cursor-pointer cursor-not-allowed">
                              <ul className="border">
                                {navigation[navigation?.findIndex(item => item?.id === 48)] && (
                                  <Link to="/aboutcompany">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 48)]?.name}
                                    </li>
                                  </Link>
                                )}
                                {navigation[navigation?.findIndex(item => item?.id === 49)] && (
                                  <Link to="/registration">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 49)]?.name}
                                    </li>
                                  </Link>
                                )}
                                {navigation[navigation?.findIndex(item => item?.id === 54)] && (
                                  <Link to="/ourmessage">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 54)]?.name}
                                    </li>
                                  </Link>
                                )}
                                {navigation[navigation?.findIndex(item => item?.id === 55)] && (
                                  <Link to="/ourcommitment">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 55)]?.name}
                                    </li>
                                  </Link>
                                )}
                                {navigation[navigation?.findIndex(item => item?.id === 56)] && (
                                  <Link to="/vision">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 56)]?.name}
                                    </li>
                                  </Link>
                                )}
                                {navigation[navigation?.findIndex(item => item?.id === 57)] && (
                                  <Link to="/mission">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 57)].name}
                                    </li>
                                  </Link>
                                )}
                                {navigation[navigation?.findIndex(item => item?.id === 58)] && (
                                  <Link to="/organizationalchart">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 58)].name}
                                    </li>
                                  </Link>
                                )}
                              </ul>
                            </div>
                          )}
                        </Link>
                      )}
                      {/* ------- Jobseeker --------  */}
                      {nav.id === 59 && (
                        <Link
                          onMouseEnter={() => { if (window.innerWidth > 768) { setJobseeker(true) } }}
                          onMouseLeave={() => { if (window.innerWidth > 768) { setJobseeker(false) } }}
                        >
                          <li className="text-white hover:text-primaryOrange transition duration-300 uppercase xl:text-sm font-semibold xl:py-8 py-4" onClick={toggleJobSeeker}>
                            {nav.name} <i class="fa-solid fa-chevron-down"></i>
                          </li>

                          {jobseeker && (
                            <div className="xl:absolute top-[84px] left-[160px] bg-white z-50 w-60  hover:text-gray-700 xl:cursor-pointer cursor-not-allowed">
                              <ul className="border">
                                {navigation[navigation?.findIndex(item => item?.id === 65)] && (
                                  <Link to="/unskilled">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 65)].name}
                                    </li>
                                  </Link>
                                )}
                                {navigation[navigation?.findIndex(item => item?.id === 71)] && (
                                  <Link to="/semiskilled">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 71)].name}
                                    </li>
                                  </Link>
                                )}
                                {navigation[navigation?.findIndex(item => item?.id === 72)] && (
                                  <Link to="/skilled">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 72)].name}
                                    </li>
                                  </Link>
                                )}
                              </ul>
                            </div>
                          )}
                        </Link>
                      )}
                      {/* ------- Documents --------  */}
                      {nav.id === 83 && (
                        <Link
                          onMouseOver={() => { if (window.innerWidth > 768) { setDocuments(true) } }}
                          onMouseLeave={() => { if (window.innerWidth > 768) { setDocuments(false) } }}
                        >
                          <li className="text-white hover:text-primaryOrange transition duration-300 uppercase xl:text-sm font-semibold xl:py-8 py-4" onClick={toggleDocuments}>
                            {nav.name} <i class="fa-solid fa-chevron-down"></i>
                          </li>

                          {documents && (
                            <div className="xl:absolute top-[84px] left-[280px] bg-white z-50 w-60  hover:text-gray-700 xl:cursor-pointer cursor-not-allowed">
                              <ul className="border">
                                {navigation[navigation?.findIndex(item => item?.id === 84)] && (
                                  <Link to="/DemandLetter">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 84)].name}
                                    </li>
                                  </Link>
                                )}
                                {navigation[navigation?.findIndex(item => item?.id === 85)] && (
                                  <Link to="/RecruitmentProcedure">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 85)].name}
                                    </li>
                                  </Link>
                                )}
                                {navigation[navigation?.findIndex(item => item?.id === 95)] && (
                                  <Link to="/RecruitingDocuments">
                                    <li className="p-2 border-b hover:text-primaryOrange text-md font-regular">
                                      {navigation[navigation?.findIndex(item => item?.id === 95)].name}
                                    </li>
                                  </Link>
                                )}
                              </ul>
                            </div>
                          )}
                        </Link>
                      )}
                      {/* {nav.childs && (
                        <li className="text-white hover:text-primaryOrange transition duration-300 uppercase text-sm py-8 relative group">
                          <span className="font-semibold cursor-pointer">
                            {nav.name} <i className="fa-solid fa-chevron-down"></i>
                          </span>
                          <div className="absolute top-full left-0 hidden bg-white z-50 w-60 group-hover:block">
                            <ul className="border">
                              {nav.childs
                                .filter(sub_nav => sub_nav.status === 'Publish') // Filter by status
                                .map(sub_nav => (
                                  <li
                                    key={sub_nav.id}
                                    className="p-2 border-b hover:text-primaryOrange text-md font-regular"
                                  >
                                    <Link to={`/submenu?name=${sub_nav.id}`}>{sub_nav.name}</Link>
                                  </li>
                                ))}
                            </ul>
                          </div>
                        </li>
                      )}

                      {!nav.childs || nav.childs.every(sub_nav => sub_nav.status !== 'Publish') && (
                        <li className="text-white hover:text-primaryOrange transition duration-300 uppercase text-sm py-8">
                          <Link to={`/menu?name=${nav.id}`}>{nav.name}</Link>
                        </li>
                      )} */}

                    </React.Fragment>
                  )}
                </React.Fragment>
              ))}
            </ul>
          </div>
        </div>
      </div>


      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/aboutcompany" element={<AboutCompany />} />
        <Route path="/registration" element={<Registration />} />
        <Route path="/ourmessage" element={<OurMessage />} />
        <Route path="/ourcommitment" element={<OurCommitment />} />
        <Route path="/vision" element={<Vision />} />
        <Route path="/mission" element={<Mission />} />
        <Route path="/organizationalchart" element={<OrganizationalChart />} />
        <Route path="/unskilled" element={<Unskilled />} />
        <Route path="/semiskilled" element={<Semiskilled />} />
        <Route path="/skilled" element={<Skilled />} />
        <Route path="/highlyskilled" element={<Highlyskilled />} />
        <Route path="/demandletter" element={<DemandLetter />} />
        <Route path="/recruitmentprocedure" element={<RecruitmentProcedure />} />
        <Route path="/recruitingdocuments" element={<RecruitingDocuments />} />
        <Route path="/contact" element={<ContactUs />} />
        <Route path="/gallery" element={<Gallery />} />
        <Route path="/advertisement" element={<Newspaper />} />
      </Routes>
    </>
  );
};

export default Header;

