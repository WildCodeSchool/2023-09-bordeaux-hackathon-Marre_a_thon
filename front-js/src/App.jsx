import "./styles/main.scss";
import Footer from "./components/Footer";
import Calendar from "./components/Calendar";
import Header from "./components/Header";

function App() {
  return (
    <div className="container">
      <Header />
      <Calendar />
      <Footer />
    </div>
  );
}

export default App;
