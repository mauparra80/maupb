import { useEffect } from "react";
import { useLocation } from "react-router";

const ScrollToTop = () => {
  // extract pathname key from an object
  const { pathname } = useLocation();

  //automatically scrolls to top whenever pathname changes
  useEffect(() => {
    window.scrollTo(0,0);
  }, [pathname]);
}

export default ScrollToTop;