'use strict';

let Endpoint = 'https://kapi.go.su/api/v1';
let EndpointV2 = Endpoint.replace('v1', 'v2');
let EndpointV3 = Endpoint.replace('v1', 'v3');

module.exports = {
    Endpoint: Endpoint,
    EndpointV2: EndpointV2,
    EndpointV3: EndpointV3
}
