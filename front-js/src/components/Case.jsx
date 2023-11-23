import { useState } from "react";
import Modal from "./Modal";

function Case() {
  const [toggleModal, setToggleModal] = useState(false);
  const casesList = [
    { id: 1, label: "1" },
    { id: 2, label: "2" },
    { id: 3, label: "3" },
    { id: 4, label: "4" },
    { id: 5, label: "5" },
    { id: 6, label: "6" },
    { id: 7, label: "7" },
    { id: 8, label: "8" },
    { id: 9, label: "9" },
    { id: 10, label: "10" },
    { id: 11, label: "11" },
    { id: 12, label: "12" },
    { id: 13, label: "13" },
    { id: 14, label: "14" },
    { id: 15, label: "15" },
    { id: 16, label: "16" },
    { id: 17, label: "17" },
    { id: 18, label: "18" },
    { id: 19, label: "19" },
    { id: 20, label: "20" },
    { id: 21, label: "21" },
    { id: 22, label: "22" },
    { id: 23, label: "23" },
    { id: 24, label: "24" },
  ];

  return (
    <div>
      {casesList.map((item) => (
        <button
          key={item.id}
          className="modal"
          type="button"
          onClick={() => setToggleModal(true)}
        >
          {item.label}
        </button>
      ))}
      <div>{toggleModal && <Modal setToggleModal={setToggleModal} />}</div>
    </div>
  );
}

export default Case;
