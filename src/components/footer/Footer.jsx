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

  const parentVariant = {
    normal: {},
    hover: {}
  }
  const headVariant = {
    normal: {},
    hover: {
      y: [-10, 10, -10],
    }
  }

  return (
    <div className="footer">
      {isHomePage ? (
        <div className="cube-container">
        <div className="cube">
          
          {/* <div className="face bottom">Bottom</div> */}
          <div className="face left"></div>
          <div className="face right"></div>
          <div className="face front"></div>
          <div className="face back"></div>
          <div className="face top"></div>
        </div>

        
        </div>
      ) : (
        <div className="regular-footer">
          <motion.div 
          className="walking-image-container"
          variants={parentVariant}
          whileHover='hover'
          >
            <img src={walking1} alt="" className='walkingImg' />
            <a href="">
              <motion.img src={linkedInPng} alt="" className='walking-head follower one'
              variants={headVariant}
              transition={{
                delay: 0.0,
                duration: 1,
                repeat: Infinity,
                type: 'easeInOut'
              }}
              />
            </a>
            <a href="">
              <motion.img src={githubPng} alt="" className='walking-head follower two'
              variants={headVariant}
              transition={{
                delay: 0.2,
                duration: 1,
                repeat: Infinity,
                type: 'easeInOut'
              }}
              />
            </a>
            <a href="">
              <motion.img src={instagramPng} alt="" className='walking-head follower three'
              variants={headVariant}
              transition={{
                delay: 0.4,
                duration: 1,
                repeat: Infinity,
                type: 'easeInOut'
              }}
              />
            </a>
            <motion.img src={mauHeadPng} alt="" className='walking-head leader zero'
              initial={{rotate: 20}}
              animate={{
                rotate: [30,10,30],
              }}
              transition={{
                repeat: Infinity,
                repeatType: 'mirror',
                duration: 2,
                ease: 'easeInOut'
              }}
              />
          </motion.div>
        </div>
      )}
    
    
    </div>
  )
}