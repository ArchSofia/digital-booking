// Imports
import React from "react";
// Styles
import './styles/caracteristicasStyle.css'
// Component 
const Caracteristicas = ({object}) => {
    return(
        <React.Fragment>
            <div className = "Caracteristicas_div"> 
                <h4>Que ofrece este lugar?</h4>
                <div className = "div_div">
                    {object.caracteristicas.map(objeto => (
                                            <div>
                                            <p>{objeto.caracteristicaNombre}</p>
                                            <img src = "" alt = ""/>
                                        </div>
                    ))}
                </div>
            </div>
        </React.Fragment>
    );
}

// Exports
export {Caracteristicas};