import Case from "./Case";

function Calendar({ movies, setMovies }) {
  return (
    <>
      <div>
        <Case movies={movies} setMovies={setMovies} />
      </div>
      <div className="video-background">
        <video autoPlay loop muted playsInline>
          <source src="./src/assets/background-video-site.mov" type="video/mp4" />
        </video>
        
      </div>
    </>
  );
}

export default Calendar;
