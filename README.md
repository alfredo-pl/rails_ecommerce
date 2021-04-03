# ANSWERS
# ANSWERS 3 , 6
A method was added in the product model to obtain those that have stock, which is applied in the home index controller and thus display them.
# ANSWER 7
The variation with its color, size and unit price must be added to the OrderItem for the functionality to be maintained.
# ANSWER 8
A coupon model and an intermediate table of user_ coupon are created where the id of the user and the id of the coupon are referenced. This to know what coupon the user has and can use it at the time of making his purchase, we also add a field in the order item model referencing the user's coupon which must be validated if he uses one or not (by default it is null) and so on get the discount depending on the coupon.

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
