import axios from "axios";
import React, { useState, useEffect } from "react";

function Modal({ toggleModal, selectedId, activeModal, setActiveModal }) {
  const [data, setData] = useState([]);

  useEffect(() => {
    if ([1, 5, 9, 13, 17, 21].includes(selectedId)) {
      const getMovies = () =>
        axios.get("http://localhost:8000/movies").then((res) => {
          setData(res.data);
        });
      getMovies();
    } else if ([2, 6, 10, 14, 18, 22].includes(selectedId)) {
      const getRecipies = () =>
        axios.get("http://localhost:8000/recipies").then((res) => {
          setData(res.data);
        });
      getRecipies();
    } else if ([3, 7, 11, 15, 19, 23].includes(selectedId)) {
      const getGifts = () =>
        axios.get("http://localhost:8000/gifts").then((res) => {
          setData(res.data);
        });
      getGifts();
    } else if ([4, 8, 12, 16, 20, 24].includes(selectedId)) {
      const getActivities = () =>
        axios.get("http://localhost:8000/activities").then((res) => {
          setData(res.data);
        });
      getActivities();
    }
  }, [selectedId]);
  return (
    <div>
      <div className="popup-inner">
        <button
          type="button"
          className="close-button"
          onClick={() => setActiveModal(!activeModal)}
        >
          X
        </button>
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

            {item.gift_title && (
              <>
                <h2>{item.gift_title}</h2>
                <img src={item.gift_img} alt="photo de la recette" />
                <p>{item.gift_description}</p>
                <a href={item.gift_url}>{item.recipe_url}</a>
              </>
            )}

            {item.activity_title && (
              <>
                <h2>{item.activity_title}</h2>
                <img src={item.activity_img} alt="photo de la recette" />
                <p>{item.activity_desc}</p>
                <p>Durée : {item.activity_time}</p>
                <a href={item.activity_url}>{item.recipe_url}</a>
              </>
            )}
          </div>
        ))}
      </div>
    </div>
  );
}
export default Modal;
