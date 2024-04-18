import React, {useState, useEffect} from "react"
import './header.css'
import { Link } from "react-router-dom";
import {AnimatePresence, motion, useAnimationControls, useAnimation} from 'framer-motion';

export default function Header() {
  const [navOpen, setNavOpen] = useState(false);
  const [isMobile, setIsMobile] = useState(false);

  useEffect(() => {
    const mediaQuery = window.matchMedia('(max-width: 800px)');
    const handleMediaQueryChange = (event) => {
      setIsMobile(event.matches);
    };
    handleMediaQueryChange(mediaQuery);
    mediaQuery.addEventListener('change', handleMediaQueryChange);

    return () => mediaQuery.removeEventListener('change', handleMediaQueryChange);
  }, []);

  const controls = useAnimation();
  const handleClick = () => {
    if (navOpen) {
      controls.start('flipRight');
      setNavOpen(false);
    }
    else {
      controls.start('flipLeft')
      setNavOpen(true);
    }
    
  }

  return(
    
      <motion.div className="header-container"
      variants={{
        flipRight: {
          backgroundColor: '#F9F1DB00',
        },
        flipLeft: {
          backgroundColor: 'var(--color-background)',
        }
      }}
      animate={controls}
      
      >
      <AnimatePresence>
      {navOpen && isMobile ? (<h1>mobile</h1>) : (
        <motion.div className="nav-container"
        initial={{
          translateX: '100%',
          opacity: 0,
        }}
        animate={{
          translateX: '-100px',
          opacity: 1.0,
        }}
        exit={{
          translateX: '100%',
          opacity: 0,
        }}
      
       
        >
          <nav>
            <ul>
              {console.log(navOpen)}
              <p>{navOpen}stuff</p>
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
        flipRight: {
          rotate: '180deg',
        },
        flipLeft: {
          rotate: '-180deg',
        }
      }}
      initial='initial'
      animate={controls}
      >{navOpen ? (<>X</>) : (<><hr /><hr /><hr /></>)}</motion.button>
    </motion.div> 
    
    
    )
}