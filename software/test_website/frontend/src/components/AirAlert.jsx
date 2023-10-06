import { useState } from "react";

function AirAlert({ strada, concentratie }) {

    const [show, setShow] = useState(true);
    const [concentratieAlert, setConcentratieAlert] = useState(concentratie);
    function handleAlert() {
        if (concentratieAlert !== concentratie) {
            setShow(true);
        }
        else {
            setShow(false);
        }
    }
    return (
        <div onClick={() => handleAlert()} className={`bg-red-100 border border-red-400 text-red-700 px-4 py-5 rounded relative alert text-sm ${show ? null : 'hide'}`} role="alert">
            <strong className="font-bold">Atentie! </strong>
            <p className="inline">Concentratia din zona <strong>{strada}</strong> este ridicata!</p>
        </div>
    );
}

export default AirAlert;