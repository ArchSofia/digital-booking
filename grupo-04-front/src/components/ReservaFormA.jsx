import React, { useEffect, useState } from 'react'
import "./styles/reservaFormAStyle.css"

export function ReservaFormA({handleOnChange}) {

    const [user, setUser] = useState({});

    useEffect(() => {
      const savedUser = localStorage.getItem('user');
      const parsedUser = savedUser ? JSON.parse(savedUser) : {};
      setUser(parsedUser);
    }, []);


  return (
    <div className='reservaFormA'>
        <div className='bloque1'>
            <div>
                <label>
                    Nombre <input type="text" value={user.nombre} readOnly/>
                </label>
            </div>
            <div>
                <label>
                    Correo electronico <input type="email" value={user.email} readOnly/>
                </label>
            </div>
        </div> 
        <div className='bloque2'>   
            <div>
                <label>
                    Apellido <input type="text" value={user.apellido} readOnly/>
                </label>
            </div>
            <div>
                <label>
                    Telefono <input type="text" name='ciudad' onChange={handleOnChange}/>
                </label>
            </div>
        </div>    
    </div>    
  )
}
