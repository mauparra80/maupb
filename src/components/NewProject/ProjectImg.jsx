import { motion } from "framer-motion"

export default function ProjectImg({mediaSource, description}) {

  return (
    <div className="project-img-container">
      <img  className="project-img" src={mediaSource} alt="" />
      {/* <div className="img-background"></div> */}
      <motion.div className="img-description"
      variants={{
        hover: {
          translateX: '-90%',
        },
        normal: {
          translateX: '-10px',
        }
      }}
      >
        <p>{description}</p>
      </motion.div>
    </div>
    
  )
}