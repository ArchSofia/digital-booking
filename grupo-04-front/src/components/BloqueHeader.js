// Imports
import React from "react";
import { Link } from "react-router-dom";
// Images
import bloqueHeaderImage from "../multimedia/bloqueHeader.png"
// Styles
import "./styles/bloqueHeaderStyle.css" 

// Component 
const BloqueHeader = ({object}) => {
    return(
        <React.Fragment>
            <div className = "BloqueHeader_div"> 
                <div>
                    <h4>{object.categoria.titulo}</h4>
                    <h2>{object.titulo}</h2>
                </div>
               <Link to={`/productos/${object.id}`}> <img src = {bloqueHeaderImage} alt = "Icon <" /> </Link>
            </div>
        </React.Fragment>
    );
}

// Exports
export {BloqueHeader};