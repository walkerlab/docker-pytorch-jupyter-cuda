import os

#%%
# Accept all incoming requests
c.ServerApp.ip = '0.0.0.0'
c.ServerApp.port = 8888
c.ServerApp.open_browser = False
c.ServerApp.token = os.environ.get('JUPYTER_PASSWORD', 'walkerlab')