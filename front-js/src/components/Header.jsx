import logo from "../assets/logo.png";

function Header() {
  return (
    <header>
      <img className="logo" src={logo} alt="logo" />
      <p class="description_header">
        Émerveillez-vous, chaque jour, <br />
        avec des idées <br />
        <span>Made in France</span>
      </p>
    </header>
  );
}

export default Header;
