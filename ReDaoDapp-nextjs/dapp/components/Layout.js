import React from "react";
import Address from '../ethereum/getMetamask'; 

console.log('fromLayout');

const Layout = (props) => {
    return (
        <div>
            <Address />
            {props.children}
        </div>  )
};

export default Layout;
