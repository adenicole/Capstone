from flask import Flask

app = Flask(__name__)

# My Homepage
@app.route('/')
def hello():
    return "<h2>Hello, Udacity! My name is Adeyemi Adedoyin, You are welcome to my Capstone project.<h2>"

# Run on port 80
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True) 