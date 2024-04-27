import './contact.css'

export default function Contact() {


  return(
    <div className="form-container">
      <div className="contact-prompt">
        
        <h2>Contact Me</h2>
        <p>lets talk! The best ways to contact me are through my <a href="mailto:maupb80@gmail.com">Email</a>, <a href="https://www.instagram.com/mauparra80/" target='_blank'>Instagram</a>, or <a href="https://www.linkedin.com/in/mauricio-parrab/" target='_blank'>Linkedin</a>. This form works perfectly as well!</p>
      </div>

      <form name="contact" method="POST" data-netlify="true" className='contact-form' action='/ThankYou' >
        <input type="hidden" name="form-name" value="contact" />
        <div className="form-row">
          <label htmlFor="name">Name</label>
          <input type="text" name="name" placeholder='Smitty Werben' />
        </div>
        <div className="form-row">
          <label htmlFor="email">Email</label>
          <input type="text" name="email" placeholder='ManJensen#1@email.com'/>
        </div>
        <div className="form-row">
          <label htmlFor="message">Message</label>
          <textarea type="text" name="message" placeholder='You are doing everything wrong and heres why ' rows={5} />
        </div>

        <button type="submit" >Release Courier Pigeon</button>
      </form>
    </div>
  )
}

