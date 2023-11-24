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
          <svg
            xmlns="http://www.w3.org/2000/svg"
            height="1em"
            viewBox="0 0 512 512"
            fill="#035f48"
          >
            <path d="M256 48a208 208 0 1 1 0 416 208 208 0 1 1 0-416zm0 464A256 256 0 1 0 256 0a256 256 0 1 0 0 512zM175 175c-9.4 9.4-9.4 24.6 0 33.9l47 47-47 47c-9.4 9.4-9.4 24.6 0 33.9s24.6 9.4 33.9 0l47-47 47 47c9.4 9.4 24.6 9.4 33.9 0s9.4-24.6 0-33.9l-47-47 47-47c9.4-9.4 9.4-24.6 0-33.9s-24.6-9.4-33.9 0l-47 47-47-47c-9.4-9.4-24.6-9.4-33.9 0z" />
          </svg>
        </button>
        {data.map((item, index) => (
          <div className="popup-container" key={index}>
            {item.movie_title && (
              <>
                <h2>{item.movie_title}</h2>
                <img src={item.movie_img} alt="photo du film" />
                <p>{item.movie_desc}</p>
                <a className="btn" target="_blank" href={item.movie_url}>
                Voir plus
                </a>
              </>
            )}

            {item.recipe_title && (
              <>
                <h2>{item.recipe_title}</h2>
                <img src={item.recipe_img} alt="photo de la recette" />
                <p>{item.recipe_description}</p>
                <a className="btn" target="_blank" href={item.recipe_url}>
                  Voir plus
                </a>
              </>
            )}

            {item.gift_title && (
              <>
                <h2>{item.gift_title}</h2>
                <img src={item.gift_img} alt="photo de la recette" />
                <p>{item.gift_description}</p>
                <a className="btn" target="_blank" href={item.gift_url}>
                  Voir plus
                </a>
              </>
            )}

            {item.activity_title && (
              <>
                <h2>{item.activity_title}</h2>
                <img src={item.activity_img} alt="photo de la recette" />
                <p>{item.activity_desc}</p>
                <p>Durée : {item.activity_time}</p>
                <a className="btn" target="_blank" href={item.activity_url}>
                  Voir plus
                </a>
              </>
            )}
          </div>
        ))}
      </div>
    </div>
  );
}
export default Modal;
