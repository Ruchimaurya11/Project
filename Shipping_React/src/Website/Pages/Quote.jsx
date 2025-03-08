import React from 'react'
import Header from '../Comman_compo/Header'
import Footer from '../Comman_compo/Footer'

function Quote() {
  return (
    <div>
        <Header/>
          {/* Quote Start */}
          <div className="container-xxl py-5">
              <div className="container py-5">
                  <div className="row g-5 align-items-center">
                      <div className="col-lg-5 wow fadeInUp" data-wow-delay="0.1s">
                          <h6 className="text-secondary text-uppercase mb-3">Get A Quote</h6>
                          <h1 className="mb-5">Request A Free Qoute!</h1>
                          <p className="mb-5">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo erat amet</p>
                          <div className="d-flex align-items-center">
                              <i className="fa fa-headphones fa-2x flex-shrink-0 bg-primary p-3 text-white" />
                              <div className="ps-4">
                                  <h6>Call for any query!</h6>
                                  <h3 className="text-primary m-0">+012 345 6789</h3>
                              </div>
                          </div>
                      </div>
                      <div className="col-lg-7">
                          <div className="bg-light text-center p-5 wow fadeIn" data-wow-delay="0.5s">
                              <form>
                                  <div className="row g-3">
                                      <div className="col-12 col-sm-6">
                                          <input type="text" className="form-control border-0" placeholder="Your Name" style={{ height: 55 }} />
                                      </div>
                                      <div className="col-12 col-sm-6">
                                          <input type="email" className="form-control border-0" placeholder="Your Email" style={{ height: 55 }} />
                                      </div>
                                      <div className="col-12 col-sm-6">
                                          <input type="text" className="form-control border-0" placeholder="Your Mobile" style={{ height: 55 }} />
                                      </div>
                                      <div className="col-12 col-sm-6">
                                          <select className="form-select border-0" style={{ height: 55 }}>
                                              <option selected>Select A Freight</option>
                                              <option value={1}>Freight 1</option>
                                              <option value={2}>Freight 2</option>
                                              <option value={3}>Freight 3</option>
                                          </select>
                                      </div>
                                      <div className="col-12">
                                          <textarea className="form-control border-0" placeholder="Special Note" defaultValue={""} />
                                      </div>
                                      <div className="col-12">
                                          <button className="btn btn-primary w-100 py-3" type="submit">Submit</button>
                                      </div>
                                  </div>
                              </form>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          {/* Quote End */}

        <Footer/>

    </div>
  )
}

export default Quote
