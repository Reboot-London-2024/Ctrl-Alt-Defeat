from flask import Flask, session, render_template
#from authlib.integrations.flask_client import OAuth
#from google.cloud import secretmanager
#import os

app = Flask(__name__)

# # Function to access secrets
# def access_secret_version(secret_name):
#     """Retrieve a secret from Google Cloud Secret Manager."""
#     client = secretmanager.SecretManagerServiceClient()
#     project_id = "your-google-cloud-project-id"
#     name = f"projects/{project_id}/secrets/{secret_name}/versions/latest"
#     response = client.access_secret_version(request={"name": name})
#     return response.payload.data.decode('UTF-8')

# Setup OAuth using secrets
# app.secret_key = access_secret_version('FLASK_SECRET_KEY')
# oauth = OAuth(app)
# microsoft = oauth.register(
#     name='microsoft',
#     client_id=access_secret_version('OAUTH_CLIENT_ID'),
#     client_secret=access_secret_version('OAUTH_CLIENT_SECRET'),
#     authorize_url='https://login.microsoftonline.com/common/oauth2/v2.0/authorize',
#     access_token_url='https://login.microsoftonline.com/common/oauth2/v2.0/token',
#     authorize_params=None,
#     client_kwargs={
#         'scope': 'User.Read openid profile email',
#         'token_endpoint_auth_method': 'client_secret_post',
#     },
# )

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/onboardingHub')
def onboarding_hub():
    user = session.get('user', None)
    return render_template('index.html', user=user)

@app.route('/profile')
def view_profile():
    user = session.get('user', None)
    return render_template('profile.html', user=user)

@app.route('/adminPanel')
def view_admin_panel():
    return render_template('adminPanel.html')
# @app.route('/login')
# def login():
#     redirect_uri = url_for('authorize', _external=True)
#     return microsoft.authorize_redirect(redirect_uri)

# @app.route('/login/callback')
# def authorize():
#     token = microsoft.authorize_access_token()
#     resp = microsoft.get('me')
#     user_info = resp.json()
#     session['user'] = user_info
#     return redirect('/')

# @app.route('/logout')
# def logout():
#     session.pop('user', None)
#     return redirect('/')

if __name__ == '__main__':
    app.run(debug=True)
