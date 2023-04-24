## User Guide
### Shoppable

*Welcome to “Shoppable”!!*  

*Shoppable is an online retail store that allows users to buy and sell latest products online. Explore a vast variety of products, and get high quality products at extremely low prices delivered to your doorstep.*  

----
Register/Log-in
----
- New users can register as a Customer, Seller or a Delivery person
- To register, users must provide the following information:
   * Name
   * Username (must be unique)
   * E-mail address
   * Password (must be unique)
   * Payment information (optional, user discretion)
- Existing users can login into their accounts using their username and password
- All users can choose to change their username and password at any point, if they wish to; however, the new username or password must be unique i.e. it must not be in use for any other user and can also not be the same as the old username or password of the particular user
- When logging out, the user is logged out from the system, and exits the application

----
Customers
----
- View and add Products to Cart
  * Customers may choose to browse the product catalog, and add any products they like, to their cart
  * Product catalog supports filters based on Product Categories
- View Cart
  * Customers can view and edit the products currently in their cart
  * It shows essential information such as Product names, Product IDs, quantity and individual product costs
- Checkout Cart
  * Customers can choose to checkout the products currently in their cart
  * This allows the customer to view all the products along with their listed prices, and view other charges including shipping charges, taxes, etc.
  * Customer is also able to view the total amount billed to their name for the order
  * Customers are required to choose a payment method when checking out (options available are Card and UPI)
  * Once the customer finalizes their payment method, an order is created and a delivery request for the same, is generated and the customer is able to view the order status, whenever they like
- View Order History
  * Customers can choose to view all their past orders
  * Information available to the customer include the Order ID, Product Total Cost, Taxes charged, Shipping fee, and the Total Billing amount


----
Manufacturers (or Sellers)
----
- Add new Product
  * Sellers can choose to add a new product to the catalog
  * They are required to specify all product details including Product name, Base Price, Discount offered, number of units available (stock), expected delivery date, and product category
- Update existing Product
  * Sellers can update the details of any of the existing products that they currently market
  * They may choose to update the name, the base price, discount percentage on offer for that product, or the total stock available
- View Product Sales
  * Sellers can view individual product sales or choose to view product sales grouped by product categories


----
Delivery Person
----
- View Active Delivery Request
  * Delivery person can view the details of the delivery request they are currently addressing
  * Details include Order ID, Customer ID (no more customer details are revealed to the delivery person to preserve customer privacy), Total Amount payable, Payment method
- Update Delivery Status
  * Delivery person is required to update the delivery status when they:
    * Accept a delivery request
    * Pick up the order
    * Successfully deliver the order
- Accept new Delivery Request
  * Delivery person can choose to accept a new delivery request only if they are currently available, i.e. they do not have a pending delivery request
  * They may choose from all the currently pending delivery requests, details of which are available for the delivery person to browse


----
Admin
----
- Add/Remove a Product Category
  * The admin is the only user who can add or remove product categories, at their discretion
  * Each product category requires a non-empty name, and is automatically assigned a Category ID
- Add/Remove a Product
  * Admin can also choose to add or remove a product from the product catalog; the procedure is similar to that followed for Sellers
- Remove a User
  * Admin also has the privilege to block/remove a user from the system
  * This disallows the respective user to login to the system or make any use of the system functionality
- View Category-wise Product Sales
  * Admin can choose to view all products’ sales grouped by the product categories they belong to
- View average Product Rating
  * Admin can view the average rating of all the products grouped by the product categories they belong to
- View region-wise Orders
  * Admin can view the order densities in each region, and view the details of each order from each region, if they choose to
- View pending Deliveries for each region
  * Admin can also view all the pending orders corresponding to each region, i.e. all currently active or queued orders/delivery requests
- Admin has a different login-logout functionality as compared to the other users
- Admin is not assigned any User ID, and is identified by their unique username and password
- Admin also has the ability to view and manipulate the entire database system, and is the god-figure with respect to this application
