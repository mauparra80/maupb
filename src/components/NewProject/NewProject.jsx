import { motion } from "framer-motion"
import './newProject.css'
import ProjectVideo from "./ProjectVideo"
import ProjectImg from './ProjectImg'

export default function NewProject({
  mediaSource,
  isVideo = false,
  link = '',
  projectTitle = 'Project Title',
  description = '',
  tag1,
  tag2,
  tag3,
}) {

  const imgVariants = {
    hover: {
      opacity: 1,
      translateX: '50px'
    },
    normal: {
      opacity: .8,
      translateX: '0'
    },
  }

  const parentVariants = {
    hover: {opacity: 1},
    normal: {opacity: .8},
  }

  const projectFlex = !isVideo ? 'project-flex' : '';
  
  const handleClick = (event) => {
    if (!isVideo) {
      event.preventDefault();
    }
  }

  const renderTag = (tagObj) => {
    

    if (tagObj && tagObj.tag) {
      console.log(tagObj.tagColor);
      let tagBackground = '#C2AD8C';
      let fontColor = '#5F4B32';

      if (tagObj.tagColor == 'blue') { 
        tagBackground = 'var(--color-cyan-dark)';
        fontColor = 'white';
       } else if (tagObj.tagColor == 'orange') {
          tagBackground = 'var(--color-orange-dark)'
          fontColor = 'white';
        }

      return (
        <p style={{ background: tagBackground, color: fontColor}} className="skills-tag">
          {tagObj.tag}
        </p>
      )
    }
  }

  return (
    <motion.a href={link} target='_blank' aria-disabled={!isVideo} className={projectFlex} onClick={handleClick}
        variants={isVideo? (parentVariants) : imgVariants}
        whileHover='hover'
        initial='normal'
    >
      {isVideo ? (<ProjectVideo mediaSource={mediaSource}/>) : <ProjectImg  mediaSource={mediaSource} description={description}/>}
      
      <h3 className="project-title">{projectTitle}</h3>
      <div className="tags">
        {renderTag(tag1)}
        {renderTag(tag2)}
        {renderTag(tag3)}
      </div>
    </motion.a>
  )
}