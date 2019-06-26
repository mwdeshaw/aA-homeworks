import { combineReducers } from 'redux';
import giphysReducer from './giphys_reducer';

export default combineReducers({
    gifys: giphysReducer
});