// Create a client with SSL/TLS enabled.
var { Client } = require('@opensearch-project/opensearch');
var client = new Client({ 
    node: 'https://admin:admin@localhost:19200',
    requestTimeout: 30 * 60 * 1000,
    ssl: {
        rejectUnauthorized: false,
    },
});

async function createTitle() {
    const { response } = await client.create({
        index: 'title',
        id: 12,
        body: {
            title: 'My first title',
            author: 'Me',
            date: new Date()
        }
    });
}

createTitle().catch(console.log)