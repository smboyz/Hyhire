import React from 'react'
import Dubai from '../../assets/image/Dubai.jpg'
import UnskilledImage from '../../assets/image/unskilled.webp'


const Highlyskilled = () => {
  return (
    <>
        <div className='w-full h-80 relative'>
            <div className='w-full h-80 absolute top-0 left-0 overflow-hidden object-cover'>
                <img src={Dubai} alt="" className='w-full' />
            </div>
            <div className='w-full h-80 absolute top-0 left-0 bg-black opacity-70'></div>
            <div className='text-3xl text-white absolute inset-0 flex items-center justify-center'>
                <h1>HIGHLY SKILLED</h1>
            </div>
        </div>
        <div className='container py-16'>
                <div className='flex gap-60 items-center flex-col xl:flex-row'>
                    <div className='xl:w-1/4 flex flex-col'>
                        <div className='text-2xl font-semibold border-b border-primaryOrange pb-2'>
                            <h3>Highly Skilled</h3>
                        </div>
                        <div className='pt-8 text-gray-500'>
                            <p>Unskilled labor refers to workers who have no special training or experience. It is a part of the workforce with a very limited skill set. Unskilled labor consists of people with a high school diploma or less. However, when the economy is struggling, people with degrees may do unskilled work.</p>
                        </div>
                    </div>
                    <div className='xl:w-3/4 bg-gray-200 p-12 rounded-xl'>
                        <div className='flex gap-10 flex-wrap'>
                            <div className='xl:w-[234px] relative'>
                                <img src={UnskilledImage} alt="" />
                                <div className='absolute bottom-0 left-0 h-10 w-full bg-primaryYellowBrand flex justify-center items-center text-black font-semibold'>
                                    WatchMan
                                </div>
                            </div>
                            <div className='xl:w-[234px] relative'>
                                <img src={UnskilledImage} alt="" />
                                <div className='absolute bottom-0 left-0 h-10 w-full bg-primaryYellowBrand flex justify-center items-center text-black font-semibold'>
                                    WatchMan
                                </div>
                            </div>
                            <div className='xl:w-[234px] relative'>
                                <img src={UnskilledImage} alt="" />
                                <div className='absolute bottom-0 left-0 h-10 w-full bg-primaryYellowBrand flex justify-center items-center text-black font-semibold'>
                                    WatchMan
                                </div>
                            </div>
                            <div className='xl:w-[234px] relative'>
                                <img src={UnskilledImage} alt="" />
                                <div className='absolute bottom-0 left-0 h-10 w-full bg-primaryYellowBrand flex justify-center items-center text-black font-semibold'>
                                    WatchMan
                                </div>
                            </div>
                            <div className='xl:w-[234px] relative'>
                                <img src={UnskilledImage} alt="" />
                                <div className='absolute bottom-0 left-0 h-10 w-full bg-primaryYellowBrand flex justify-center items-center text-black font-semibold'>
                                    WatchMan
                                </div>
                            </div>
                            <div className='xl:w-[234px] relative'>
                                <img src={UnskilledImage} alt="" />
                                <div className='absolute bottom-0 left-0 h-10 w-full bg-primaryYellowBrand flex justify-center items-center text-black font-semibold'>
                                    WatchMan
                                </div>
                            </div>
                           
                           
                        </div>

                    </div>
                </div>
            </div>

       
    </>
  )
}

export default Highlyskilled