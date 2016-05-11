'use strict';

let Constants = require('./constants');

let request = require('./helper');

let Api = require('proto');

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
        const ChatHandshake = Api.ChatHandshakeResponse;
        const url = Constants.Endpoint + '/chat/handshake';

        request.get(url)
            .set('X-Token', token)
            .end(function(err, res) {
                if (err) {
                    Client.chatHandshakeResult(err);
                } else {
                    const msg = ChatHandshake.decode(res.body)
                        .toRaw();
                    Client.chatHandshakeResult(null, msg);
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
