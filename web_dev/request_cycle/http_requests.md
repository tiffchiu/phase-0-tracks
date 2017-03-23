## What are some common HTTP status codes?

* 1xx Informational responses.
* 2xx Success.
* 3xx Redirection.
* 4xx Client errors.
* 5xx Server error.
* Unofficial codes

### Common codes:
**404** - Not found
**403** - Forbidden
**500** - Internal server error


## What is the difference between a GET request and a POST request? When might each be used?

**GET** - Requests data from a specified resource
GET requests a representation of the specified resource. Note that GET should not be used for operations that cause side-effects, such as using it for taking actions in web applications. One reason for this is that GET may be used arbitrarily by robots or crawlers, which should not need to consider the side effects that a request should cause.

**POST** - Submits data to be processed to a specified resource
POST submits data to be processed (e.g., from an HTML form) to the identified resource. The data is included in the body of the request. This may result in the creation of a new resource or the updates of existing resources or both.

## Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

From Wikipedia - 
A Cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. Cookies were designed to be a reliable mechanism for websites to remember stateful information (such as items added in the shopping cart in an online store) or to record the user's browsing activity (including clicking particular buttons, logging in, or recording which pages were visited in the past). They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers.

There are also other kinds of cookies that perform other actions.

