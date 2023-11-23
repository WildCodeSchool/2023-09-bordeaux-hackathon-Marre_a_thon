import axios from "axios";
import React, { useState, useEffect } from "react";

function Modal({ toggleModal }) {
  const [movies, setMovies] = useState([]);

  useEffect(() => {
    const getMovies = () =>
      axios.get("http://localhost:8000/movies").then((res) => {
        setMovies(res.data);
      });
    getMovies();
  }, []);

  return (
    <div>
      {movies.map((movie, index) => (
        <div key={index}>
          <h2>{movie.movie_title}</h2>
          <img src={movie.movie_img} alt="photo du film" />
          <p>{movie.movie_desc}</p>
          <a href={movie.movie_url}>{movie.movie_url}</a>
        </div>
      ))}
    </div>
  );
}

export default Modal;
