module.exports.handler = async (event) => {
    console.log('Event: ', event);
    let responseMessage = 'Hello, World!';
    if (event.queryStringParameters && event.queryStringParameters['name']) {
        responseMessage = 'Hello, ' + event.queryStringParameters['name'] + '!';
    }

    return {
        statusCode: 200,
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            message: responseMessage,
        }),
    }
}