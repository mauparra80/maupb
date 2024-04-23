import { motion, useAnimation } from "framer-motion"
import { Link } from "react-router-dom";

export default function ContactButton () {
  const controls = useAnimation();
  
  return (
    <Link className='contact-link-flexbox' to='/contact'>
        <motion.div className="contact-link-container"
        onHoverStart={() => controls.start('contactHovered')}
        onHoverEnd={() => controls.start('contactNormal')}
        >
          <motion.div
          variants={{
            contactHovered: {
              scaleX: 1
            },
            contactNormal: {
              scaleX: 0
            }
          }}
          initial='contactNormal'
          style={{
            position: 'absolute',
            top: '-5px',
            bottom: '-5px',
            right: '-15px',
            backgroundColor: '#4D7C80',
            width: '110%',
            padding: '20px',
            transformOrigin: 'bottom',
          }}
          animate={controls}
          />
          <motion.div
          variants={{
            contactHovered: {color: '#ffffff'},
            contactNormal: {color: '#5F4B32'}
          }}
          initial='contactNormal'
          animate={controls}
          style={{position: 'relative', zIndex: 1}}
          >
            <motion.p
            variants={{
              contactHovered: {color: '#ffffff'},
              contactNormal: {color: '#5F4B32'}
            }}
            >Do You Need a Website?</motion.p>
            <motion.div
            variants={{
              contactHovered: {background: '#ffffff00'},
              contactNormal: {background: '#FF9447'}
            }}
            className="contact-link-button">
              <motion.h3
              variants={{
                contactHovered: {color: '#ffffff'},
                contactNormal: {color: '#5F4B32'}
              }}
              >Contact me</motion.h3>
            </motion.div>
          </motion.div>
        </motion.div>
    </Link>
  )
}