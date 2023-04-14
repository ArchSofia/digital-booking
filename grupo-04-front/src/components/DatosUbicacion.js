// Imports
import React from "react";
// Images
import ubicationIcon from "../multimedia/ubicationIcon.png"
// Styles
import './styles/datosUbicacionStyle.css'

// Component 
const DatosUbicacion = ({object}) => {
    return(
        <React.Fragment>
            <div className = "DatosUbicacion_div">
                <div className = "div_top">
                    <img src = {ubicationIcon} alt = "Ubication Icon" />
                    <p>{object.ubicacion}</p>
                </div>
                <div>
                    <div>
                        <p>Puntuacion</p>
                        <img src = "" alt = "" /> 
                    </div>
                    <img src = "" alt = "" /> 
                </div>
            </div>
        </React.Fragment>
    );
}

// Exports
export {DatosUbicacion};