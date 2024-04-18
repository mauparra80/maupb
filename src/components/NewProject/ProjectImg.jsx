import { motion, useAnimation } from "framer-motion"

export default function ProjectImg({mediaSource, description, controls}) {

  const imgVariants = {
    hover: {
      opacity: 1,
      translateX: '50px'
    },
    normal: {
      opacity: 1,
      translateX: '0',
      transitionDuration: '.4s'
    },
    click: {
      translateX: '180px',
      opacity: 1
    }
  }

  return (
    <div className="project-img-container">
      <motion.img  className="project-img" src={mediaSource} alt="" animate={controls}
      variants={imgVariants} />
      {/* <div className="img-background"></div> */}
      <motion.div className="img-description"
      variants={{
        hover: {
          translateX: '-90%',
        },
        normal: {
          translateX: '-10px',
        },
        click: {
          translateX: '-90px',
        }
      }}
      >
        <p>{description}</p>
      </motion.div>
    </div>
    
  )
}