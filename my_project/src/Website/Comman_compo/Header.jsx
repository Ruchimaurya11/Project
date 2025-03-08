import React from 'react'
import { NavLink } from 'react-router-dom'

function Header() {
  return (
    <div>
      {/* Navbar Start */}
      <nav className="navbar navbar-expand-lg bg-white navbar-light shadow border-top border-5 border-primary sticky-top p-0">
        <a href="index.html" className="navbar-brand bg-primary d-flex align-items-center px-4 px-lg-5">
          <h2 className="mb-2 text-white">Logistica</h2>
        </a>
        <button type="button" className="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
          <span className="navbar-toggler-icon" />
        </button>
        <div className="collapse navbar-collapse" id="navbarCollapse">
          <div className="navbar-nav ms-auto p-4 p-lg-0">
            <NavLink to="/" className="nav-item nav-link active">Home</NavLink>
            <NavLink to="/About" className="nav-item nav-link">About</NavLink>
            <NavLink to="/Services" className="nav-item nav-link">Services</NavLink>
            <div className="nav-item dropdown">
              <NavLink to="/main" className="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pagges</NavLink>
              <div className="dropdown-menu fade-up m-0">
                <NavLink to="/main/Price" className="dropdown-item">Pricing Plan</NavLink>
                <NavLink to="/main/Feature" className="dropdown-item">Feature</NavLink>
                <NavLink to="/main/Quote" className="dropdown-item">Free Quote</NavLink>
                <NavLink to="/main/Team" className="dropdown-item">Our Team</NavLink>
                <NavLink to="/main/Teastimonial" className="dropdown-item">Testimonial</NavLink>
                <NavLink to="/main/Error404" className="dropdown-item">404 Page</NavLink>
              </div>
            </div>
            <NavLink to="/Contact" className="nav-item nav-link">Contact</NavLink>
          </div>
          <h4 className="m-0 pe-lg-5 d-none d-lg-block"><i className="fa fa-headphones text-primary me-3" />+012 345 6789</h4>
        </div>
      </nav>
      {/* Navbar End */}

    </div>
  )
}

export default Header
