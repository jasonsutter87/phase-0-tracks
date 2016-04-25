# Questions

----
## What are some common HTTP status codes?

> 1. HTTP ERROR 500 (INTERNAL SERVER ERROR)
2. HTTP ERROR 404 (NOT FOUND)
3. HTTP ERROR 403 (FORBIDDEN)
4. HTTP ERROR 400 (BAD REQUEST)
5. HTTP ERROR 401 (UNAUTHORIZED)

----
## What is the difference between a GET request and a POST request? When might each be used?

> 1. GET - Requests data from a specified resource
> 2. POST - Submits data to be processed to a specified resource

> GET would be used to pull information to a server, while POST, sends data and submits it to a server. this could be images, user log in information.


----
##Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

> Cookies are passed as HTTP headers, both in the request (client -> server), and in the response (server -> client). 

> Quite simply, a cookie is a small text file that is stored by a browser on the user’s machine. Cookies are plain text; they contain no executable code. A web page or server instructs a browser to store this information and then send it back with each subsequent request based on a set of rules. Web servers can then use this information to identify individual users. Most sites requiring a login will typically set a cookie once your credentials have been verified, and you are then free to navigate to all parts of the site so long as that cookie is present and validated. Once again, the cookie just contains data and isn’t harmful in and of itself.

