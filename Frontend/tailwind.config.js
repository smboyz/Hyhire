/** @type {import('tailwindcss').Config} */
module.exports =  {
    content: [
        "./index.html",
        "./src/**/*.{js,ts,jsx,tsx}",
        'node_modules/preline/dist/*.js',
    ],
    theme: {
        container: {
            center: 'true',
            padding: {
                DEFAULT: '1rem'
            },
            screens: {

                sm: '410px',
                md: '768px',
                lg: '1080px',
                xl: '1280px',
                "2xl": '1440px'
            }
        },
        extend: {
            width: {
                '128': '32rem',
                '256': '64rem',
                'cont': '86rem'
            },
            height: {
                '128': '32rem',
                '256': '64rem'
            },
            colors: {
                primaryLightBlue: '#597BB6',
                secondaryDarkBlue: '#21273F',
                primaryOrange: '#FF5C00',
                primaryYellowBrand: '#FFF9AE'

            },
            keyframes: {
                scale: {
                    '0%': { transform: 'scaleY(1)' },
                    '50%': { transform: 'scaleY(1.2)' },
                    '100%': { transform: 'scaleY(1)' }

                }
            },
            animation: {
                'upscale': 'scale 30s linear infinite'
            }, 
           
        },
    },
    plugins: [
        require('preline/plugin'),
       
    ],
  
  
}

