let ENVIRO;
let API_URL;

ENVIRO = 'development';

if (ENVIRO === 'development') {
    API_URL = `http://localhost:8080`;
} else {
    API_URL = `https://server.payoor.shop`;
}

export default API_URL;