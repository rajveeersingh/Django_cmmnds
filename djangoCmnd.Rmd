---
output:
  html_document: default
---
# Django Project
## Create your home project directory with cmnd.
  $mkdir dir-Name
  
  $cd dir-Name
  
## terminal cmnd to create your project
 '''$django-admin startproject myproject'''

## next cmmnd to enter project
'''$cd myproject'''

# your directory structure would be like this.
  
## Root-directory-
               *myproject-
                    **myproject-
                        *** __init__.py
                        *** settings.py
                        *** urls.py
                        *** wsgi.py
                    **db.sqlit3 --> django default database.
                    **manage.py
# To run server - 
		*goto the same directory where manage.py is stored.
		* check with $ls cmmnd, it will show you manage.py
## cmnd to run server is -
	'''$python manage.py runserver'''

	'''than you can goto the server by ctrl+click on the http://127.0.0.1:8000(defaultport)'''
# Project 
    Prject is your website and one project/website can have many apps. so, to create app follow the bellow cmmnd.-

    $python manage.py startapp "your app name like as- myapp"

    '''your app would be in same directory where your innner myproject dir is.'''
      * Here is your whole project dir structure.
        ->>*myproject-
                **myproject-
                    ***> __pycache__
                    *** __init__.py
                    *** settings.py
                    *** urls.py
                    *** wsgi.py
                **db.sqlit3 --> django default database.
                **manage.py
                **myapp-
                    ***>__pycache__
                    ***>migrations 
                    ***__init__.py
                    ***admin.py
                    ***apps.py
                    ***models.py
                    ***tests.py
                    ***urls.py <--- it would be include after creating as done below.
                    ***views.py

# To locate your webapp page via link.
    * create urls.py file in your webapp as you create the above as "myapp"
    ** then this urls.py will be linked to your project urls.py. 
        *** in myproject urls.py you will write  This -- "path('',include('myapp.urls'))," to include your app urls to project. their may be number of app urls.
        
# What do you want to return to your website home page
### that will be written in "views.py".
    ex.- you may write a function like this.
    def index(request):
        return HttpResponse("This is my home page")
    * and to link this to your home page url
      ** got to urls.py of myapp and write this
        ***from django.urls import path
           from . import views
           urlpatterns = [
                path('',views.index, name = 'Home-Page'),
              ]
      ** after that to link this app to your website got to myproject urls.py 
        ***path('',include('myapp.urls')) just include this to urlpatterns
        
# now on terminal you can run this commnd
    $python manage.py runserver 