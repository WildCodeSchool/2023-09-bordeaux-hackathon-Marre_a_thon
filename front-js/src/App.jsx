import "./styles/main.scss";
import Footer from "./components/Footer";
import Header from "./components/Header";
// import axios from "axios";
// import React, { useState } from "react";

function App() {
  // const [movies, setMovies] = useState([]);
  // const [recipes, setRecipes] = useState([]);
  // const [activities, setActivities] = useState([]);
  // const [gifts, setGifts] = useState([]);

  // useEffect(() => {
  // const getMovies = () =>
  //   axios.get("...").then((res) => { setMovies(res.data);
  // });
  // getMovies(movies);
  // }, [setMovies]);

  // return (
  //   <div>
  //     <h2>{movies.movie_title}</h2>
  //     <img src={movies.movie_img} alt="photo du film" />
  //     <p>{movies.movie_desc}</p>
  //     <a href={movies.movie_url} />
  //   </div>
  // );

  // useEffect(() => {
  // const getRecipes = () =>
  //   axios.get("...").then((res) => { setRecipes(res.data);
  // });
  // getRecipes(recipes);
  // }, [setRecipes]);
  // return (
  //   <div>
  //     <h2>{recipies.recipe_title}</h2>
  //     <img src={recipies.recipe_img} alt="photo du film" />
  //     <p>{recipies.recipe_description}</p>
  //     <a href={recipies.recipe_url} />
  //   </div>
  // );

  // useEffect(() => {
  //   axios.get("...").then((res) => setActivities(res.data));
  // }, []);

  // return (
  //   <div>
  //     <h2>{activities.title}</h2>
  //     <img src={activities.img} alt="photo du film" />
  //     <p>{activities.description}</p>
  //     <a href={activities.link} />
  //   </div>
  // );
  // useEffect(() => {
  //   axios.get("...").then((res) => setGifts(res.data));
  // }, []);
  // return (
  //   <div>
  //     <h2>{gift.title}</h2>
  //     <img src={gift.img} alt="photo du film" />
  //     <p>{gift.description}</p>
  //     <a href={gift.link} />
  //   </div>
  // );

  return (
    <div className="container">
      <Header />
      <Footer />
    </div>
  );
}

export default App;
