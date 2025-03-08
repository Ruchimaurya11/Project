import React from 'react'
import Footer from '../Comman_compo/Footer'
import Header from '../Comman_compo/Header'

function Contact() {
    return (
        <div>
<Header/>
            {/* Contact Start */}
            <div className="container-fluid overflow-hidden py-5 px-lg-0">
                <div className="container contact-page py-5 px-lg-0">
                    <div className="row g-5 mx-lg-0">
                        <div className="col-md-6 contact-form wow fadeIn" data-wow-delay="0.1s">
                            <h6 className="text-secondary text-uppercase">Get In Touch</h6>
                            <h1 className="mb-4">Contact For Any Query</h1>
                            <p className="mb-4">The contact form is currently inactive. Get a functional and working contact form with Ajax &amp; PHP in a few minutes. Just copy and paste the files, add a little code and you're done. <a href="https://htmlcodex.com/contact-form">Download Now</a>.</p>
                            <div className="bg-light p-4">
                                <form>
                                    <div className="row g-3">
                                        <div className="col-md-6">
                                            <div className="form-floating">
                                                <input type="text" className="form-control" id="name" placeholder="Your Name" />
                                                <label htmlFor="name">Your Name</label>
                                            </div>
                                        </div>
                                        <div className="col-md-6">
                                            <div className="form-floating">
                                                <input type="email" className="form-control" id="email" placeholder="Your Email" />
                                                <label htmlFor="email">Your Email</label>
                                            </div>
                                        </div>
                                        <div className="col-12">
                                            <div className="form-floating">
                                                <input type="text" className="form-control" id="subject" placeholder="Subject" />
                                                <label htmlFor="subject">Subject</label>
                                            </div>
                                        </div>
                                        <div className="col-12">
                                            <div className="form-floating">
                                                <textarea className="form-control" placeholder="Leave a message here" id="message" style={{ height: 100 }} defaultValue={""} />
                                                <label htmlFor="message">Message</label>
                                            </div>
                                        </div>
                                        <div className="col-12">
                                            <button className="btn btn-primary w-100 py-3" type="submit">Send Message</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div className="col-md-6 pe-lg-0 wow fadeInRight" data-wow-delay="0.1s">
                            <div className="position-relative h-100">
                                <iframe className="position-absolute w-100 h-100" style={{ objectFit: 'cover' }} src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001156.4288297426!2d-78.01371936852176!3d42.72876761954724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1603794290143!5m2!1sen!2sbd" frameBorder={0} allowFullScreen aria-hidden="false" tabIndex={0} />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {/* Contact End */}
            <Footer/>


        </div>
    )
}

export default Contact
