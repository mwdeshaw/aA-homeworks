import React from 'react';
import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            searchTerm: ''
        };
        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    };

    handleChange(e) {
        this.setState({
            searchTerm: e.currentTarget.value
        });
    };

    handleSubmit(e) {
        e.preventDefault();
        this.props.fetchSearchGiphys(this.state.searchTerm);
    };

    render() {
        let { giphys } = this.props;
        return(
            <div>
                <form className='search-bar'>
                    <h2>Search for giphy</h2>
                    <label>Search Term:
                        <input
                        value={this.state.searchTerm}
                        onChange={this.handleChange}
                        />
                    </label>
                    <button type="submit" onClick={this.handleSubmit}>Search!!!</button>
                </form>

                <GiphysIndex giphys={giphys} />
            </div>
        );
    };

}

export default GiphysSearch;