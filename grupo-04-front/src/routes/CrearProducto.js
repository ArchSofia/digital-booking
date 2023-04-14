// Imports
    // Librarys
    import axios from "axios";
    import React, { useEffect, useState } from "react";
    import { Footer } from "../components/Footer";
    import {Header} from "../components/header/Header";
import bloqueHeaderImage from "../multimedia/bloqueHeader.png"
 
    // Styles
    import "./styles/reservaStyle.css"
    import "../components/styles/bloqueHeaderStyle.css"
import { Link, useNavigate } from "react-router-dom";
    // Component 

    const CrearProducto = () => {

        const [ciudades, setCiudades] = useState([]);

        useEffect(() => {
          axios.get("http://ec2-3-145-180-105.us-east-2.compute.amazonaws.com:8080/ciudades")
          .then( res => setCiudades(res.data))
        },[])

        console.log(ciudades);
        const [category, setCategory] = useState([]);

        useEffect(() => {
            axios.get("http://ec2-3-145-180-105.us-east-2.compute.amazonaws.com:8080/categorias")
            .then( res => setCategory(res.data))
            .catch(error => {
                console.error('Error fetching categorias data:', error);
              });
        },[])

        const [caracteristicas, setCaracteristicas] = useState([]);

        useEffect(() => {
            axios.get("http://ec2-3-145-180-105.us-east-2.compute.amazonaws.com:8080/caracteristicas")
            .then( res => setCaracteristicas(res.data))
            .catch(error => {
                console.error('Error fetching categorias data:', error);
              });
        },[])       
        
        console.log(caracteristicas);

        const [arrayCaracteristicas, setArrayCaracteristicas] = useState([]);

        const handleCheckboxChange = (event) => {
          const caracteristicaSeleccionada = event.target.value;
      
          if (event.target.checked) {
            setArrayCaracteristicas([...arrayCaracteristicas, { "idcaracteristica": caracteristicaSeleccionada}]);
          } else {
            setArrayCaracteristicas(
              arrayCaracteristicas.filter((caracteristica) => caracteristica !== caracteristicaSeleccionada )
            );
          }
        };

        console.log(arrayCaracteristicas);


        const [jwt, setJwt] = useState({});

        useEffect(() => {
          const savedUser = localStorage.getItem('jwt');
          const parsedUser = savedUser ? JSON.parse(savedUser) : {};
          setJwt(parsedUser);
          
        }, []);

        console.log(jwt);


        const [datosCrearProducto, setDatosCrearProducto] = useState({
            titulo: "",
            ubicacion: "",
            descripcion: "",
            direccion: "",
            categoria: {},
            ciudad: {},
            caracteristicas: [],
            normasCasa: "",
            medidasSaludSeguridad: "",
            politicasCancelacion: ""
        });

        const handleChange = (event) => {
            const target = event.target;
            const value = target.value;
            const name = target.name;

            console.log(value);
        
            setDatosCrearProducto({
              ...datosCrearProducto,
              [name]: value
            });
          }

          const [imagenes, setImagenes] = useState([]);

          const handleAgregarImagen = () => {
            const nuevaImagen = document.getElementById("url").value.trim();
            console.log(nuevaImagen);
            if (nuevaImagen) {
              setImagenes((prevImagenes) => prevImagenes.concat(nuevaImagen));
              document.getElementById("url").value = "";
              alert(`Has subido ${imagenes.length + 1} imagenes`)
            }
          };
    
        const navigate = useNavigate();

        const handleSubmit = (e) => {
            e.preventDefault();

            let productoId = 0

            if(imagenes.length >= 5) {
                const crearProductoData = {
                    titulo: datosCrearProducto.titulo,
                    ubicacion: datosCrearProducto.direccion,
                    descripcion: datosCrearProducto.descripcion,
                    direccion: datosCrearProducto.direccion,
                    categoria: { id: Number(datosCrearProducto.categoria)},
                    ciudad: { id: Number(datosCrearProducto.ciudad)},
                    caracteristicas: arrayCaracteristicas.map(caracteristica => ({ idcaracteristica: parseInt(caracteristica.idcaracteristica) })),
                    normasCasa: datosCrearProducto.normasCasa,
                    medidasSaludSeguridad: datosCrearProducto.medidasSaludSeguridad,
                    politicasCancelacion: datosCrearProducto.politicasCancelacion
                }
    
                axios.post("http://ec2-3-145-180-105.us-east-2.compute.amazonaws.com:8080/productos/add", JSON.stringify(crearProductoData), {
                    headers: {
                      'Content-Type': 'application/json',
                      'Authorization': `Bearer ${jwt}`
                    }
                  })
                  .then(function (response) {
                    console.log(response.data);
                    console.log(response.status);
                    console.log(response);
                    productoId = response.data.id
                    const crearImagenes = imagenes.map(imagen => ({
                      titulo: datosCrearProducto.titulo,
                      producto: {id: productoId},
                      url: imagen
                  }));
  
                  console.log(crearImagenes);
                  
                  Promise.all(
                    crearImagenes.map(imagen =>
                      axios.post("http://ec2-3-145-180-105.us-east-2.compute.amazonaws.com:8080/imagenes/add", JSON.stringify(imagen), {
                        headers: {
                          'Content-Type': 'application/json',
                          'Authorization': `Bearer ${jwt}`
                        }
                      })
                    )
                  )
                    .then(function (response) {
                      console.log(response);
                      console.log(response.status);
                      if (response.status === 201) {
                        navigate("/productoCreado");
                      }else {
                        navigate("/productoCreado");
                      }
                    })
                    .catch(function (error) {
                      console.log(error);
                    });
                  })
                  .catch(function (error) {
                    console.log(error);
                  });
    
                  console.log(productoId);


            }else {
                alert("Tiene que subir al menos 5 imagenes")
            }


        }


    
        return(
            <React.Fragment>
                <Header />
                    <section>
                        <div className = "BloqueHeader_div"> 
                            <div>
                                <h2>Administracion</h2>
                            </div>
                            <img src = {bloqueHeaderImage} alt = "Icon <" /> 
                        </div>
                        <section className="crearPropiedad">
                        <h1>Crear Propiedad</h1>
                        <form className="formProducto" onSubmit={handleSubmit}>
                                <div className="principio">
                                    <div className="principio_main">
                                        <div className="principio_bloque1">
                                            <p>Nombre de la propiedad</p>
                                            <input type="text" name="titulo" placeholder="Ej. Trump Tower" onChange={handleChange} required></input>
                                            <p>Direccion</p>
                                            <input type="text" name="direccion" placeholder="Ej. Calle Falsa 123,Springfield,USA" onChange={handleChange} required></input> 
                                        </div>
                                        <div className="principio_bloque2">
                                            <p>Categoria</p>
                                            <select name="categoria" onChange={handleChange} required>
                                                {category.map((value) => (
                                                    <option value={value.id} key={value.id}>{value.titulo}</option>
                                                ))}
                                            </select>
                                            <p>Ciudad</p>
                                            <select name="ciudad" onChange={handleChange} required>
                                                {ciudades.map((value) => (
                                                    <option value={value.id} key={value.id}>{value.ciudad}</option>
                                                ))}
                                            </select>
                                        </div>
                                    </div>    
                                    <div className="principio_bloque3"> 
                                        <p>Descripcion</p>
                                        <input type="text" placeholder="Escribe aqui" name="descripcion" onChange={handleChange} required></input>
                                    </div>
                                </div>
                                <div className="medio">
                                    <h2>Agregar atributo</h2>
                                    <div className="medio_main">
                                        {caracteristicas.map((element) => {
                                            return(
                                                <div className="checkBox" key={element.idcaracteristica}>
                                                    <input name={element.caracteristicaNombre} value={element.idcaracteristica} type="checkbox"  onChange={handleCheckboxChange} />
                                                    <label>{element.caracteristicaNombre}</label>
                                                </div>
                                            )
                                        })}
                                    </div>    
                                </div>
                                <div className="medio2">
                                    <h2>Politicas del producto</h2>
                                    <div className="medio2_main">
                                        <div className="medio2_bloque1">
                                            <h4>Normas de la casa</h4>
                                            <p>Descripcion</p>
                                            <input type="text" placeholder="Escribir Aqui" name="normasCasa" onChange={handleChange} required></input>
                                        </div>
                                        <div className="medio2_bloque2">
                                            <h4>Salud y seguridad</h4>
                                            <p>Descripcion</p>
                                            <input type="text" placeholder="Escribir Aqui" name="medidasSaludSeguridad" onChange={handleChange} required></input>
                                        </div>
                                        <div className="medio2_bloque3"> 
                                            <h4>Politicas de cancelacion</h4>
                                            <p>Descripcion</p>
                                            <input type="text" placeholder="Escribir Aqui" name="politicasCancelacion" onChange={handleChange} required></input>
                                        </div>
                                    </div>
                                </div>
                                <div className="final">
                                    <h2>Cargar imagenes</h2>
                                    <div className="final_main">
                                        <input id="url" type="text" placeholder="URL" ></input>
                                        <button type="button" onClick={handleAgregarImagen}> + </button>
                                    </div>

                                </div>
                                <button className="formProducto_crear" type="submit">Crear </button>
                            </form>
                        </section>
                    </section> 
                <Footer />
            </React.Fragment>
        )
    }
    
    // Export
    export {CrearProducto} 