import React, { Component } from "react";
import detectEthereumProvider from '@metamask/detect-provider';

console.log('fromMetamask');
let provider;

class Address extends Component{
    state = {
        account: '',
    };
    
    ConnectMetamask = async (event) => {
        event.preventDefault();

        provider = await detectEthereumProvider();
             
        const accounts = await window.ethereum.request({ method: "eth_requestAccounts" });
        const account = accounts[0];
      
        console.log(account);
        this.setState({account: account})
    }

    render() {
        return (
            <main>
                <form>
                    <button onClick={this.ConnectMetamask}>Enable Ethereum and Show Address</button>
                    <br></br>
                    <label>Account:{this.state.account}</label>
                </form>
            </main>
        )
    };
}

export default Address;