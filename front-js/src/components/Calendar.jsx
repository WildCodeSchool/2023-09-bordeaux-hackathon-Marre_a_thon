import "../styles/_calendar.scss";

function Calendar() {
  return (
    <div className="container">
      <div className="video-background">
        <h1>hello</h1>
        <video autoPlay loop muted playsInline>
          <source src="./src/assets/videoCalendar.mp4" type="video.mp4" />
        </video>
      </div>
    </div>
  );
}

export default Calendar;
