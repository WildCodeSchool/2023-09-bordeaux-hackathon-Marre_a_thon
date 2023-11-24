import { useState } from "react";
import Modal from "./Modal";
import CaseItem from "./CaseItem";

function Case() {
  const [activeButtonId, setActiveButtonId] = useState(null);

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
        <button
          key={item.id}
          className={`modal${item.id === activeButtonId ? " active" : ""}`}
          type="button"
          onClick={() => handleButtonClick(item.id)}
        >
          <div className={`toggleModal${item.id === activeButtonId ? " active" : ""}`}>
            <CaseItem item={item}/>
          </div>
        </button>
      ))}
      {activeButtonId !== null && (
        <div className={`popup${activeButtonId !== null ? " active" : ""}`}>
          <Modal
            toggleModal={activeButtonId !== null}
            setToggleModal={() => setActiveButtonId(null)}
            selectedId={activeButtonId}
          />
        </div>
      )}
    </div>
  );
}

export default Case;
