import './home.css';
import {motion, useAnimation} from 'framer-motion';
import React, {useState} from 'react';

import Buzzwords from '../../components/buzzwords/Buzzwords';
import profilePic from '../../assets/imgs/profile-pic.png';
import linkedInPng from '../../assets/icons/linkedin.png'
import instagramPng from '../../assets/icons/instagram.png'
import githubPng from '../../assets/icons/github.png';
import Projector from '../../components/Projector/Projector';



export default function Home() {
  const controls = useAnimation();

 

  return (
    <>
    <div className="section main-header">
      <div className="header-portrait-img">
        <img src={profilePic} />
      </div>
      <div className="header-content">
        <h1>Mau Parra</h1>
        <ul>
          <li>Web Dev</li>
          <li>Software Engineer</li>
          <li>Digital Designer</li>
        </ul>
      </div>
    </div>

    <div className="body-section">
      <div className="grid-section overview">
        <div>
          <div className="title numbered">
            <h2>Overview</h2>
          
          </div>
          <div className="links">
            <a href="https://www.linkedin.com/in/mauricio-parrab/" target="_blank"><img className='icon' src={linkedInPng} alt="LinkedIn link" /><p>Professional</p></a>
            <a href="https://github.com/mauparra80" target="_blank"><img className='icon' src={githubPng} alt="github link"  /><p>Projects</p></a>
            <a href="https://www.instagram.com/mauparra80/" target="_blank"><img className='icon' src={instagramPng} alt="Instagram link"  /><p>Personal</p></a>
            
          </div>
        </div>
        <div className="content">
          <p>Hello! My name is Mauricio but people call me Mau. I am a <a href="https://ece.utdallas.edu/admissions/undergraduate-programs/computer-engineering/">hardware engineer</a> and tech teacher turned software developer. Growing up and seeing the web change has always kept me thinking about all the effort and decision making that goes into presententing ones information and product to a broad user market.<br /><br /></p>
          <p>
            Web design is the perfect combination of art and functionality with a sprinkle of deprecated features. This makes it right up my alley as an artist and work addict. <br/><br/>
          </p>
          <p>
            if you are a recruiter interested in what I can do, 
             <motion.span
            className="buzzword-link"
            onHoverStart={() => {controls.start('line')}}
            onHoverEnd={() => {controls.start('normal')}}
            whileHover={{cursor: 'pointer'}}
            > 
            here is a list of some tech buzzwords I know. <br />
            <motion.span
            className='arrow-line'
            variants={{
              normal: {
                width: '10px',
              },
              line: {
                width: '95%',
              }
            }}
            initial='normal'
            animate={controls}
            
            ></motion.span> <span className='arrow-head'></span>
            </motion.span>
          </p>
          <motion.div
          className='buzzwords-container'
          variants={{
            line: {
              width: '200px',
              opacity: 1,
            },
            normal: {
              width: 0,
              opacity: 0,
            }
          }}
          transition={{
            delayChildren: 0.5
          }}
          animate={controls}
          initial='normal'
          ><Buzzwords /></motion.div>
          
        </div>
        
      </div>

      <div className="grid-section now">
        <div className="title numbered">
          <h2>Now</h2>
        </div>
        <div className="content">
          <p>
            Teaching web design inspired me to go back into my tech field and explore its possibilities. After a few months of studying <a href="https://www.theodinproject.com/">The Odin Project</a>, I am now growing my web design knowledge by freelancing mostly wedding websites and other small sites for friends, family, and small businesses.
          </p>
          <div className='contact-link-flexbox'>
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
              <motion.a href=""
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
              </motion.a>
            </motion.div>
          </div>
        </div>
      </div>

      <div className="grid-section future">
        <div className="left-section">
          <div className="title numbered">
            <h2>Future</h2>
            
          </div>
          
        </div>
        <div className="content">
          <p>
            If there is anything I have learned, is that while you can have a directional heading for the future, nothing is assured so I mostly let the waves carry me while I set the sails. I soon hope to be part of a bigger project and team so I can continue to grow as a web developer. 
          </p>
        </div>
      </div>
      <div className='projector-container grid-section'>
        <Projector />
        <div className="projector-sign">
          <h3>I will be making hologram sites one day</h3>
          {/* <img src={arrowIcon} alt="" /> */}
        </div>
      </div>
      
    </div>

    
   
    </>
  )
}