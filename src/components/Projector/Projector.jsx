import holoBox from '../../assets/imgs/holo-box.png'
import futureVid from '../../assets/videos/future-vid.mp4'
import './projector.css'

export default function Projector() {
  return (
    <div className="video-container">
                <div className="masked-holorays"></div>
                <div className="solid-ray-background"></div>
                <div className="glow shadow"></div>
                <img src={holoBox} alt="" id='holoBox' />
                <div className="holoBox-light"></div>
                <div className="holoBox-slit"></div>
                <div className="future-video">
                  <video
                  width='400px'
                  src={futureVid}
                  muted
                  loop
                  playsInline
                  autoPlay
                  ></video>
                </div>
      </div>
  )
}