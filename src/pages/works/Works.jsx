import './works.css'
import {motion} from 'framer-motion'
import NewProject from '../../components/NewProject/NewProject'

import maupbVid from '../../assets/videos/maupb-vid.mp4'
import futureVid from '../../assets/videos/future-vid.mp4'
import weddingVid from '../../assets/videos/wedding-vid.mp4'
import shopVid from '../../assets/videos/shop-video.mp4'
import resumeVid from '../../assets/videos/resumeBuilder-video.mp4'
import rockPaperScissorsImg from '../../assets/imgs/rock-paper-scissors.png'
import libraryImg from '../../assets/imgs/library.png'
import todoListImg from '../../assets/imgs/todo-list.png'
import cardGameImg from '../../assets/imgs/card-game.png'

export default function Works() {

 

  return (
    <>
    <div className="current-works main-section">
      <div className="title numbered one">
          <h2>Current</h2>
      </div>
      <p className='title-description'>I have been making wedding websites for friends, family and a few clients. While I mostly use the same template, I am trying to build upon it. I have also been using this current portfolio site to try new things like <a href="https://www.framer.com/motion/" target='_blank'>Framer-Motion</a>.</p>
      <div className="double-project-section">
        <NewProject
        mediaSource={weddingVid}
        isVideo={true}
        link='https://mauparra80.github.io/wedding-site/'
        projectTitle='Wedding Websites'
        tag1={{tag: 'React', tagColor: 'orange'}}
        tag2={{tag: 'Single-Page'}}
        />
        <NewProject 
        mediaSource={maupbVid}
        isVideo={true}
        link='https://mysticmodeshop.netlify.app/'
        projectTitle='Maupb'
        tag1={{tag: 'React', tagColor: 'orange'}}
        tag2={{tag: 'React-Router', tagColor: 'blue'}}
        tag3={{tag: 'Framer-Motion', tagColor: 'blue'}}
        />
      </div>
    </div>

    <div className="completed-works main-section">
      <div className="title numbered two">
          <h2>Completed</h2>
      </div>
      <p className='title-description'>Most of these projects have been part of my studies at <a href="https://www.theodinproject.com/" target='_blank'>The Odin Project</a>  to work on a specific skill. For this reason, they arent all perfectly rounded. You can find many more on my <a href="https://github.com/mauparra80">Github</a></p>
      <div className="double-project-section">
      <NewProject 
        mediaSource={shopVid}
        isVideo={true}
        link='https://mysticmodeshop.netlify.app/'
        projectTitle='Mystic Mode'
        tag1={{tag: 'React', tagColor: 'orange'}}
        tag2={{tag: 'React-Router', tagColor: 'blue'}}
        />
      <NewProject 
        mediaSource={resumeVid}
        isVideo={true}
        link='https://resumebuildermpb.netlify.app/'
        projectTitle='Resume Builder'
        tag1={{tag: 'React', tagColor: 'orange'}}
        tag2={{tag: 'React-Router', tagColor: 'blue'}}
        />
        
      </div>
      <h3 id='old-completed-title'>and some older more simple projects</h3>

      <div className="old-completed-list">
        <div className="old-completed-item">
          <NewProject 
          mediaSource={cardGameImg}
          isVideo={false}
          projectTitle='Card Game'
          description='A pokemon memory card game where you have to pick all 20 different pokemon without picking the same one twice.'
          tag1={{tag: 'React', tagColor: 'orange'}}
          tag2={{tag: 'API', tagColor: 'blue'}}
          tag3={{tag: 'TOP Project'}}
          />
        </div>
        <div className="old-completed-item">
          <NewProject 
            mediaSource={todoListImg}
            isVideo={false}
            projectTitle='Todo List'
            description='A todo list project that manages added items and filters them based on different criteria. this project was mostly to work on Javascript'
            tag1={{tag: 'Vanilla JS', tagColor: 'orange'}}
            tag2={{tag: 'Javascript', tagColor: 'blue'}}
            tag3={{tag: 'TOP Project'}}
            />
        </div>
        <div className="old-completed-item">
          <NewProject 
            mediaSource={libraryImg}
            isVideo={false}
            projectTitle='Library'
            description='A personal library where you can add books you want to read or have read and check them off. '
            tag1={{tag: 'Vanilla JS', tagColor: 'orange'}}
            tag2={{tag: 'CSS', tagColor: 'blue'}}
            tag3={{tag: 'TOP Project'}}
            />
        </div>
        <div className="old-completed-item">
          <NewProject 
            mediaSource={rockPaperScissorsImg}
            isVideo={false}
            projectTitle='R/P/S Game'
            description='A small game I made early on to test out some concepts. I started learning CSS animations and event handlers'
            tag1={{tag: 'Vanilla CSS', tagColor: 'orange'}}
            tag3={{tag: 'TOP Project'}}
            />
        </div>
      </div>
    </div>
    </>
  )
}


