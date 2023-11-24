function CaseItem({item}) {
  return (
    <>
      <div
        className={`case-container`}
      >
        <div className="page"><span>{item.label}</span></div>
        <div className="cube__face cube__face--back"></div>
        <div className="cube__face cube__face--right"></div>
        <div className="cube__face cube__face--left"></div>
        <div className="cube__face cube__face--top"></div>
        <div className="cube__face cube__face--bottom"></div>
      </div>
    </>
  );
}

export default CaseItem;
