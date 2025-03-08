import React, { useEffect, useState } from 'react'
import Header from '../Comman_compo/Header'
import Footer from '../Comman_compo/Footer'
import axios from 'axios'

function Services() {


    const [service,setservice]= useState([])

        useEffect(()=>{
            fetchdata()
        }
        )
        const fetchdata=async()=>{
            const res= await axios.get("http://localhost:3000/services")
            console.log(res.data)
            setservice(res.data)
        }


  return (
    <div>
        <Header/>
          {/* Service Start */}
          <div className="container-xxl py-5">
              <div className="container py-5">
                  <div className="text-center wow fadeInUp" data-wow-delay="0.1s">
                      <h6 className="text-secondary text-uppercase">Our Services</h6>
                      <h1 className="mb-5">Explore Our Services</h1>
                  </div>
                  <div className="row g-4">
                      {
                        service && service.map((item)=>{
                            return(
                                <div className="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                          <div className="service-item p-4">
                              <div className="overflow-hidden mb-4">
                                  <img className="img-fluid" src={item.url}  />
                              </div>
                              <h4 className="mb-3">{item.title}</h4>
                              <p>{item.Desc}</p>
                              <a className="btn-slide mt-2" href><i className="fa fa-arrow-right" /><span>Read More</span></a>
                          </div>
                      </div>
                            )
                        }
                        )
                      }
                  </div>
              </div>
          </div>
          {/* Service End */}
<Footer/>
    </div>
  )
}

export default Services
