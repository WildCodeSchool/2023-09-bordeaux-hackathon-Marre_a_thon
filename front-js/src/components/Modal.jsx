import axios from "axios";
import React, { useState, useEffect } from "react";

function Modal({ toggleModal, selectedId }) {
  const [data, setData] = useState([]);

  useEffect(() => {
    if ([2, 4, 6, 10].includes(selectedId)) {
      const getMovies = () =>
        axios.get("http://localhost:8000/movies").then((res) => {
          setData(res.data);
        });
      getMovies();
    } else if ([3, 7, 9, 13].includes(selectedId)) {
      const getRecipes = () =>
        axios.get("http://localhost:8000/recipes").then((res) => {
          setData(res.data);
        });
      getRecipes();
    } else if ([5, 8, 11, 14].includes(selectedId)) {
      const getGifts = () =>
        axios.get("http://localhost:8000/gifts").then((res) => {
          setData(res.data);
        });
      getGifts();
    } else if ([1, 12, 15, 18].includes(selectedId)) {
      const getActivities = () =>
        axios.get("http://localhost:8000/activities").then((res) => {
          setData(res.data);
        });
      getActivities();
    }
  }, [selectedId]);
  return (
    <div>
      {data.map((item, index) => (
        <div key={index}>
          {item.movie_title && (
            <>
              <h2>{item.movie_title}</h2>
              <img src={item.movie_img} alt="photo du film" />
              <p>{item.movie_desc}</p>
              <a href={item.movie_url}>{item.movie_url}</a>
            </>
          )}

          {item.recipe_title && (
            <>
              <h2>{item.recipe_title}</h2>
              <img src={item.recipe_img} alt="photo de la recette" />
              <p>{item.recipe_description}</p>
              <a href={item.recipe_url}>{item.recipe_url}</a>
            </>
          )}
        </div>
      ))}
    </div>
  );
}
export default Modal;
