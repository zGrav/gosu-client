'use strict';

let request = require('superagent');

request.parse['application/x-protobuf'] = function(obj) {
    			return obj;
};

module.exports = {
    			post: function(url, buffer, token) {
        			let req = request.post(url)
            .type('application/x-protobuf')
            .on('request', function() {
                			if (this.xhr) {
                    			this.xhr.responseType = 'arraybuffer';
                }
            });

        			if (buffer) {
            			req.send(buffer);
        }

        			if (token) {
            			req.set('X-Token', token);
        }

        			return req;
    },

    			delete: function(url, token, buffer) {
        			let req = request.del(url)
            .type('application/x-protobuf')
            .on('request', function() {
                			if (this.xhr) {
                    			this.xhr.responseType = 'arraybuffer';
                }
            });

        			if (buffer) {
            			req.send(buffer);
        }

        			if (token) {
            			req.set('X-Token', token);
        }

        			return req;
    },

    			put: function(url, token, buffer) {
        			let req = request.put(url)
            .type('application/x-protobuf')
            .on('request', function() {
                			if (this.xhr) {
                    			this.xhr.responseType = 'arraybuffer';
                }
            });

        			if (buffer) {
            			req.send(buffer);
        }

        			if (token) {
            			req.set('X-Token', token);
        }

        			return req;
    },

    			get: function(url, token, query) {
        			let req = request.get(url)
            .type('application/x-protobuf')
            .on('request', function() {
                			if (this.xhr) {
                    			this.xhr.responseType = 'arraybuffer';
                }
            });

        			if (token) {
            			req.set('X-Token', token);
        }

        			if (query) {
            			req.query(query);
        }

        			return req;
    },
};
