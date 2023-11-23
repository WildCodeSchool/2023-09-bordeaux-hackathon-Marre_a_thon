import logo from "../assets/logo.png";

function Header() {
  return (
    <header className="container d-flex-center">
      <img className="logo" src={logo} alt="logo" />
      <p className="description_header">
        Émerveillez-vous, chaque jour, <br />
        avec des idées Made in France.
      </p>
    </header>
  );
}

export default Header;
