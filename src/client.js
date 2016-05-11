'use strict';

let Constants = require('./constants');

let request = require('request');

let Api = require('./proto').Api;

let Class = function(methods) {
    let classconstructor = function() {
        this.initialize.apply(this, arguments);
    };

    for (let property in methods) {
       classconstructor.prototype[property] = methods[property];
    }

    if (!classconstructor.prototype.initialize) classconstructor.prototype.initialize = function(){};

    return classconstructor;
};

let Client = Class({

    chatHandshake: function(token) {
        let ChatHandshake = Api.ChatHandshakeResponse;
        let url = Constants.Endpoint + '/chat/handshake';

        request({
            headers: {
              'Content-Type': 'application/x-protobuf',
              'X-Token': token
            },
            uri: Constants.Endpoint + '/chat/handshake',
            method: 'GET'
          }, function (err, res, body) {
              console.log(res)
              console.log(body)
              if (err) {
                  chatHandshakeResult(err);
              } else {
                  let msg = ChatHandshake.decode(res.body).toRaw();
                  chatHandshakeResult(null, msg);
              }
          });
    },

    chatHandshakeResult: function(err, msg) {
        if (err) {
            console.log('fail ' + err)
        } else {
            console.log('success ' + msg)
        }
    }
});

module.exports = Client;
