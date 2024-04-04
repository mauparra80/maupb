import React, {useState, useEffect} from "react"
import './header.css'
import { Link } from "react-router-dom";
import {AnimatePresence, motion, useAnimationControls, useAnimation} from 'framer-motion';

export default function Header() {
  const [navOpen, setNavOpen] = useState(false);
  const [buttonSymbol, setButtonSymbol] = useState("<hr /><hr /><hr />")

  const controls = useAnimation();
  const handleClick = () => {
    if (navOpen) {
      controls.start('flipBack');
    }
    else {controls.start('flip')}
    setNavOpen((prev) => !prev);
  }

  return(
    
      <div className="header-container">
      <AnimatePresence>
      {navOpen && (
        <motion.div className="nav-container"
        initial={{
          translateX: '100%',
          opacity: 0,
        }}
        animate={{
          translateX: '-100px',
          opacity: 1,
        }}
        exit={{
          translateX: '100%',
          opacity: 0,
        }}
      
       
        >
          <nav>
            <ul>
              <Link to='/' >Mauricio</Link>
              <Link to='/works' >Works</Link>
              <Link to='/contact' >Contact</Link>
            </ul>
          </nav>
        </motion.div>
      )}
      </AnimatePresence>

      <motion.button 
      className="nav-button" 
      onClick={handleClick}
      variants={{
        initial: {
          rotate: '0deg',
        },
        flip: {
          rotate: '180deg',
        },
        flipBack: {
          rotate: '-180deg',
        }
      }}
      initial='initial'
      animate={controls}
      >{navOpen ? (<><hr /><hr /><hr /></>) : (<>X</>)}</motion.button>
    </div> 
    
    
    )
}