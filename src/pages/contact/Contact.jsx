import './contact.css'

export default function Contact() {


  return(
    <div className="form-container">
      <div className="contact-prompt">
        <h2 id='contact-title'>Contact<br/> Under Construction</h2>
        <p>But you can still send me an email at mauparra80@hotmail.com</p>
      </div>

      <form name="contact" method="POST" data-netlify="true" className='contact-form' action='/ThankYou' >
        <input type="hidden" name="form-name" value="contact" />
        <div className="form-row">
          <label htmlFor="name">Name</label>
          <input type="text" name="name" placeholder='Smitty Werben' />
        </div>
        <div className="form-row">
          <label htmlFor="email">Email</label>
          <input type="text" name="message" placeholder='ManJensen#1@email.com'/>
        </div>
        <div className="form-row">
          <label htmlFor="message">Message</label>
          <textarea type="text" name="message" placeholder='You are doing everything wrong and heres why ' rows={5} />
        </div>

        <button type="submit" >does not work yet! sorry!</button>
      </form>
    </div>
  )
}

