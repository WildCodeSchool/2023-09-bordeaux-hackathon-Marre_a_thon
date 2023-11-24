import { useState } from "react";
import Modal from "./Modal";
import CaseItem from "./CaseItem";

function Case() {
  const [activeButtonId, setActiveButtonId] = useState(null);
  const [activeModal, setActiveModal] = useState(false);

  const casesList = Array.from({ length: 24 }, (_, index) => ({
    id: index + 1,
    label: (index + 1).toString(),
  }));

  const handleButtonClick = (id) => {
    setActiveButtonId(id === activeButtonId ? null : id);
  };

  return (
    <div className="calendar">
      {casesList.map((item) => (
        <div className={`modal${item.id === activeButtonId ? " active" : ""}`}>
          <div className={`case-container`}>
            <button
              onClick={() => setActiveModal(!activeModal)}
              className="item"
              type="button"
            >
              Item
            </button>
            <button
              key={item.id}
              className={`${item.id === activeButtonId ? " active" : ""}`}
              type="button"
              onClick={() => handleButtonClick(item.id)}
            >
              <div className={`toggleModal`}>
                <div className="page">
                </div>
              </div>
            </button>
            <div className="cube__face cube__face--back"></div>
            <div className="cube__face cube__face--right"></div>
            <div className="cube__face cube__face--left"></div>
            <div className="cube__face cube__face--top"></div>
            <div className="cube__face cube__face--bottom"></div>
          </div>
        </div>
      ))}
      <div className={`popup${activeModal === true ? " active" : ""}`}>
        <Modal
          toggleModal={activeButtonId !== null}
          setToggleModal={() => setActiveButtonId(null)}
          selectedId={activeButtonId}
          setActiveModal={setActiveModal}
          activeModal={activeModal}
        />
      </div>
    </div>
  );
}

export default Case;
