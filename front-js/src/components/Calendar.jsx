import Case from "./Case";

function Calendar() {
  return (
    <>
      <div>
        <Case />
      </div>
      <div className="video-background">
        <video autoPlay loop muted playsInline>
          <source src="./src/assets/videoCalendar.mp4" type="video/mp4" />
        </video>
      </div>
    </>
  );
}

export default Calendar;
