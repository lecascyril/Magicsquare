#!/usr/bin/env python3
from flask import Flask

app = Flask(__name__)

import routes

if __name__ == "__main__":
    # Only for debugging while developing
    routes.app.run(host='0.0.0.0', debug=True, port=8000)
