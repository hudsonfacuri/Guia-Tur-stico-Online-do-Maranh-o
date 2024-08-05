const express = require('express');
const app = express();
const PORT = 3000;

const cities = {
    'sao_luis': {
        name: 'São Luís',
        description: 'São Luís é uma cidade no nordeste do Brasil...',
        location: {lat: -2.5297, lng: -44.3028}
    },
    'imperatriz': {
        name: 'Imperatriz',
        description: 'Imperatriz, também conhecida como a cidade "Portal da Amazônia"...',
        location: {lat: -5.5266, lng: -47.4717}
    },
    'carutapera': {
        name: 'Carutapera',
        description: 'Carutapera está localizada a 578 km de São Luís...',
        location: {lat: -1.1969, lng: -46.0208}
    }
};

app.get('/api/cities', (req, res) => {
    res.json(cities);
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
