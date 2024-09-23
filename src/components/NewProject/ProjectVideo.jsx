import { motion } from "framer-motion"

export default function ProjectVideo({mediaSource}) {

  
  const videoVariants = {
    hover: {scale: 1.05, boxShadow: '0 0 5px 5px rgba(0, 0, 0, 0.515)', outline: '5px solid white'}
    
  }

  return (
    <div className="project-video">
            <motion.video 
              variants={videoVariants}
              preload='none'
              muted
              loop
              playsInline
              autoPlay
              width={200}
              height={400}
              ><source src={mediaSource} type='video/mp4'/>Your browser does not support this video</motion.video>
              <motion.div className="video-background orange"
              variants={{
                hover: {
                  translateX: '-30px',
                  translateY: '30px',
                  backgroundColor: "var(--color-orange-dark)"
                },
                normal: {
                  translateX: '10px',
                  translateY: '-10px',
                }
              }}
              />
              <motion.div className="video-background blue"
              variants={{
                hover: {
                  translateX: '30px',
                  translateY: '-30px',
                  backgroundColor: 'var(--color-cyan-dark)'
                },
                normal: {
                  translateX: '-10px',
                  translateY: '10px',
                }
              }}
              />
          </div>
  )
}