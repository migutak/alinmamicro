module.exports = {
    oracle: {
        connector: 'oracle',
        hostname: process.env.DB_HOST || '127.0.0.1',
       ort: process.env.DB_PORT || 1521, //,        user: process.env.DB_USER || 'ecol',
        password: process.env.DB_PASSWORD || 'ecol',
        database: process.env.DB_DATABASE || 'ORCLCDB.localdomain'//'',
    }
}