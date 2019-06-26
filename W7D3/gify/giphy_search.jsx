import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
// import { fetchSearchGiphys } from './util/api_util';
import { receiveSearchGiphys, fetchSearchGiphys } from './actions/giphy_actions';


document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("root");
    const store = configureStore();

    // window.fetchSearchGiphys = fetchSearchGiphys;
    // window.store = store;
    // window.receiveSearchGiphys = receiveSearchGiphys;
    
    ReactDOM.render(<Root store={store} /> , root);
});





