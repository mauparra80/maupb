import './contact.css'

export default function Contact() {


  return(
    <div className="form-container">
      <div className="contact-prompt">
        <h2 id='contact-title'>Contact<br/> Under Construction</h2>
        <p>But you can still send me a message</p>
      </div>

      <form name="contact" netlify className='contact-form'>
        <div className="form-row">
          <label htmlFor="name">Name</label>
          <input type="text" name="name" placeholder='Smitty Werben'/>
        </div>
        <div className="form-row">
          <label htmlFor="email">Email</label>
          <input type="text" name="message" placeholder='ManJensen#1@email.com'/>
        </div>
        <div className="form-row">
          <label htmlFor="message">Message</label>
          <textarea type="text" name="message" placeholder='You are doing everything wrong and heres why ' rows={5} />
        </div>

        <button type="submit">Send</button>
      </form>
    </div>
  )
}

