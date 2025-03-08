import React from 'react'
import Header from '../Comman_compo/Header'
import Footer from '../Comman_compo/Footer'

function Price() {
  return (
    <div>
          <div>
            <Header/>
              {/* Pricing Start */}
              <div className="container-xxl py-5">
                  <div className="container py-5">
                      <div className="text-center wow fadeInUp" data-wow-delay="0.1s">
                          <h6 className="text-secondary text-uppercase">Pricing Plan</h6>
                          <h1 className="mb-5">Perfect Pricing Plan</h1>
                      </div>
                      <div className="row g-4">
                          <div className="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                              <div className="price-item">
                                  <div className="border-bottom p-4 mb-4">
                                      <h5 className="text-primary mb-1">Basic Plan</h5>
                                      <h1 className="display-5 mb-0">
                                          <small className="align-top" style={{ fontSize: 22, lineHeight: 45 }}>$</small>49.00<small className="align-bottom" style={{ fontSize: 16, lineHeight: 40 }}>/ Month</small>
                                      </h1>
                                  </div>
                                  <div className="p-4 pt-0">
                                      <p><i className="fa fa-check text-success me-3" />HTML5 &amp; CSS3</p>
                                      <p><i className="fa fa-check text-success me-3" />Bootstrap v5</p>
                                      <p><i className="fa fa-check text-success me-3" />FontAwesome Icons</p>
                                      <p><i className="fa fa-check text-success me-3" />Responsive Layout</p>
                                      <p><i className="fa fa-check text-success me-3" />Cross-browser Support</p>
                                      <a className="btn-slide mt-2" href><i className="fa fa-arrow-right" /><span>Order Now</span></a>
                                  </div>
                              </div>
                          </div>
                          <div className="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                              <div className="price-item">
                                  <div className="border-bottom p-4 mb-4">
                                      <h5 className="text-primary mb-1">Standard Plan</h5>
                                      <h1 className="display-5 mb-0">
                                          <small className="align-top" style={{ fontSize: 22, lineHeight: 45 }}>$</small>99.00<small className="align-bottom" style={{ fontSize: 16, lineHeight: 40 }}>/ Month</small>
                                      </h1>
                                  </div>
                                  <div className="p-4 pt-0">
                                      <p><i className="fa fa-check text-success me-3" />HTML5 &amp; CSS3</p>
                                      <p><i className="fa fa-check text-success me-3" />Bootstrap v5</p>
                                      <p><i className="fa fa-check text-success me-3" />FontAwesome Icons</p>
                                      <p><i className="fa fa-check text-success me-3" />Responsive Layout</p>
                                      <p><i className="fa fa-check text-success me-3" />Cross-browser Support</p>
                                      <a className="btn-slide mt-2" href><i className="fa fa-arrow-right" /><span>Order Now</span></a>
                                  </div>
                              </div>
                          </div>
                          <div className="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.7s">
                              <div className="price-item">
                                  <div className="border-bottom p-4 mb-4">
                                      <h5 className="text-primary mb-1">Advanced Plan</h5>
                                      <h1 className="display-5 mb-0">
                                          <small className="align-top" style={{ fontSize: 22, lineHeight: 45 }}>$</small>149.00<small className="align-bottom" style={{ fontSize: 16, lineHeight: 40 }}>/ Month</small>
                                      </h1>
                                  </div>
                                  <div className="p-4 pt-0">
                                      <p><i className="fa fa-check text-success me-3" />HTML5 &amp; CSS3</p>
                                      <p><i className="fa fa-check text-success me-3" />Bootstrap v5</p>
                                      <p><i className="fa fa-check text-success me-3" />FontAwesome Icons</p>
                                      <p><i className="fa fa-check text-success me-3" />Responsive Layout</p>
                                      <p><i className="fa fa-check text-success me-3" />Cross-browser Support</p>
                                      <a className="btn-slide mt-2" href><i className="fa fa-arrow-right" /><span>Order Now</span></a>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              {/* Pricing End */}
            
              <Footer/>
          </div>

        
    </div>
  )
}

export default Price
