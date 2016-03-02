# s2i-python
Extends https://github.com/openshift/sti-python

Adds rpms needed to install common packages including

- Pillow
- cffi

Adds python packages (Mainly to save time, could be overwritten per project)

- Pillow
- psycopg2 
- hiredis

Tools:

- postgresql94 (client tools like psql and pg_dump)

Adds node (We use it for compiling static assets)
