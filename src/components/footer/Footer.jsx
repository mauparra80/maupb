import { motion } from 'framer-motion'

import './footer.css'
import walking1 from '../../assets/imgs/walkingFooter.png'
import linkedInPng from '../../assets/icons/linkedin.png'
import instagramPng from '../../assets/icons/instagram.png'
import githubPng from '../../assets/icons/github.png';
import mauHeadPng from '../../assets/imgs/myHead.png'

/*
make values for length? one being 100% so we have a modular table. 
make legs
add item or two
make pointer and sign. 
make footer for other pages
*/

export default function Footer({isHomePage}) {

  return (
    <div className="footer" style={{ ...!isHomePage && {height: '500px'}}}>
      {isHomePage ? (
        <div className="cube-container">
        <div className="cube">
          
          {/* <div className="face bottom">Bottom</div> */}
          <div className="face left"></div>
          <div className="face right"></div>
          <div className="face front"></div>
          {/* <div className="face back"></div> */}
          <div className="face top"></div>
        </div>

        
        </div>
      ) : (
        <div className="regular-footer">
          <div 
          className="walking-image-container"
          >
            <img src={walking1} alt="" className='walkingImg' />
            <div className="heads">
              <a href="">
                <img src={linkedInPng} alt="" className='walking-head follower one'
                />
              </a>
              <a href="">
                <img src={githubPng} alt="" className='walking-head follower two'
                />
              </a>
              <a href="">
                <img src={instagramPng} alt="" className='walking-head follower three'
                />
              </a>
              <motion.img src={mauHeadPng} alt="" className='walking-head leader zero'
                initial={{
                  rotate: 20,
                  x: '100px',
                  y: '-10px'
                }}
                animate={{
                  x: '100px',
                  y: '-10px',
                  rotate: [30,10,30],
                }}
                transition={{
                  repeat: Infinity,
                  repeatType: 'mirror',
                  duration: 2,
                  ease: 'easeInOut'
                }}
                />
            </div>
          </div>
        </div>
      )}
    
    
    </div>
  )
}