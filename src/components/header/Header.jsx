import React, {useState, useEffect} from "react"
import './header.css'
import { Link } from "react-router-dom";
import {AnimatePresence, motion, useAnimationControls, useAnimation} from 'framer-motion';

export default function Header() {
  const [navOpen, setNavOpen] = useState(true);
  const [isMobile, setIsMobile] = useState(true);
  const [currentPage, setCurrentPage] = useState("Mau");

  useEffect(() => {
    const mediaQuery = window.matchMedia('(max-width: 800px)');
    const handleMediaQueryChange = (event) => {
      setIsMobile(event.matches);
      setNavOpen(!event.matches);
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

  const removeNav = () => {
    if (navOpen) {
      setNavOpen(false);
    }
  }


  useScrollToTop(setNavOpen,controls, isMobile);
  // console.log('navopn', navOpen);

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
      onClick={removeNav}
      >
      <AnimatePresence>
      {navOpen && (isMobile ? (
      <div className="mobile-nav-container padding-top-10px">
        <nav>
            <motion.ul
            initial={{
              translateY: '200px',
              opacity: 0,
            }}
            animate={{
              translateY: '0px',
              opacity: 1.0,
            }}
            exit={{
              translateY: '-200%',
              opacity: 0,
            }}
            
            >
              <Link to='/' onClick={() => setCurrentPage('Mau')}>Mau</Link>
              <Link to='/works' onClick={() => setCurrentPage('Works')} >Works</Link>
              <Link to='/contact' onClick={() => setCurrentPage('Contact')}  >Contact</Link>
            </motion.ul>
        </nav>
      </div>
      ) : ( //if not mobile
        <motion.div className="nav-container padding-top-10px"
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
              <Link to='/' onClick={() => setCurrentPage('Mau')} >Mau</Link>
              <Link to='/works' onClick={() => setCurrentPage('Works')} >Works</Link>
              <Link to='/contact' onClick={() => setCurrentPage('Contact')}>Contact</Link>
            </ul>
          </nav>
        </motion.div>
      ))}
      </AnimatePresence>

      <div className="header-button-container padding-top-10px">
        {isMobile && (
          <p>{currentPage}</p>
        )}

        <motion.button
        className="nav-button"
        onClick={handleClick}
        variants={{
          // initial: {
          //   rotate: '180deg',
          // },
          // flipRight: {
          //   rotate: '180deg',
          // },
          // flipLeft: {
          //   rotate: '-180deg',
          // }
        }}
        initial='initial'
        animate={controls}
        >{navOpen ? (<>X</>) : (<><hr /><hr /><hr /></>)}</motion.button>
      </div>
    </motion.div> 
    
    
    )
}

const useScrollToTop = (setNavOpen,controls, isMobile) => {
  const [isAtTop, setIsAtTop] = useState(true);
  const[prevScrollPos, setPrevScrollPos] = useState(0);

  useEffect(() => {
    const handleScroll = () => {
      const currentScrollPos = window.scrollY || document.documentElement.scrollTop;
      setIsAtTop(currentScrollPos === 0);
      console.log(currentScrollPos);

      if ((!isMobile) && (currentScrollPos === 0)) {
        //at top
        setNavOpen(true);
        controls.start('flipLeft')
      } else if(!isMobile){
        //not at top
        controls.start('flipRight')
        setNavOpen(false);
      }
      setPrevScrollPos(currentScrollPos);
    };

    window.addEventListener('scroll', handleScroll);

    return () => {
      window.removeEventListener('scroll', handleScroll);
    }
  }, [prevScrollPos, isAtTop])

  return {isAtTop};
}