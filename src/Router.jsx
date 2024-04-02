import {createBrowserRouter, RouterProvider, Outlet } from "react-router-dom";
import Header from "./components/header/Header.jsx";
import Footer from "./components/footer/Footer.jsx";
import Home from "./pages/home/Home.jsx";
import Works from "./pages/works/Works.jsx";
import Contact from "./pages/contact/Contact.jsx";
import ErrorPage from "./components/errors/ErrorPage.jsx";


const Layout = () => {
  return (
    <>
      <Header />
      <Outlet />
      <Footer />
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
          path: "./contact",
          element: <Contact />,
        }
      ]
    },
  ]);

  return (
    <RouterProvider router={router} />
  )
}