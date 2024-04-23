import {createBrowserRouter, RouterProvider, Outlet, useLocation } from "react-router-dom";
import Header from "./components/header/Header.jsx";
import Footer from "./components/footer/Footer.jsx";
import Home from "./pages/home/Home.jsx";
import Works from "./pages/works/Works.jsx";
import Contact from "./pages/contact/Contact.jsx";
import ErrorPage from "./components/errors/ErrorPage.jsx";
import ThankYou from './pages/thank-you/ThankYou.jsx'
import ScrollToTop from "./components/ScrollToTop.js";


const Layout = () => {
  const location = useLocation();
  const isHomePage = location.pathname === '/';

  return (
    <>
      <ScrollToTop />
      <Header />
      <Outlet />
      <Footer isHomePage={isHomePage}/>
    </>
  )
}

export default function Router() {
  const router = createBrowserRouter([
    {
      path: "/",
      element: <Layout />,
      errorElement: <ErrorPage />,
      children: [
        {
          index: true,
          element: <Home />,
        },
        {
          path: "/works",
          element: <Works />,
        },
        {
          path: "/contact",
          element: <Contact />,
        },
        {
          path: "/ThankYou",
          element: <ThankYou />,
        },
      ]
    },
  ]);

  return (
    <RouterProvider router={router} />
  )
}