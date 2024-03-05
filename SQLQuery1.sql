-- Feedback Dim Table Schema
Create Table Feedback (
  feedback_id varchar(254) primary key,
  feeback_score int ,
  feedback_form_sent_date Date,
  feedback_answer_date Date
)


-- Order Dim Track Table Schema
Create Table order_track(
  order_id varchar(254) primary key,
  order_status varchar(254) ,
  order_date dateTime,
  order_approved_date dateTime,
  pickup_date dateTime,
  delivered_date dateTime,
  estimated_time_delivery dateTime
)

-- Payment Dim Table Schema
Create Table payment (
  payment_id int primary key,
  payment_sequential int,
  payment_type varchar(254),
  payment_installments int,
  payment_value float 
)

-- Product Dim Table Schema
Create Table product (
  product_id varchar(254) primary key,
  product_category varchar(254) ,
  product_name_lenght int,
  product_description_lenght int,
  product_photos_qty int,
  product_weight_g int,
  product_length_cm int ,
  product_height_cm int,
  product_width_cm int
)

-- Seller Dim Table Schema
Create Table seller(
  seller_id varchar(254) primary key,
  seller_zip_code int ,
  seller_city varchar(254),
  seller_state varchar(254)
)

-- User Dim Table schema
create table user_data(
 user_id varchar(254) primary key,
 customer_zip_code int ,
 customer_city varchar(254), 
 customer_state varchar(254)
)

-- Sales Table Schema
Create Table sales (
  order_id varchar(254) ,
  user_id varchar(254) ,
  product_id varchar(254) ,
  feedback_id varchar(254),
  seller_id varchar(254),
  payment_id int,
  quantity int ,
  pickup_limit_date timestamp,
  price float,
  shipping_cost float,
  FOREIGN KEY (order_id) REFERENCES order_track(order_id),
  FOREIGN KEY (user_id) REFERENCES user_data(user_id),
  FOREIGN KEY (product_id) REFERENCES product(product_id),
  FOREIGN KEY (feedback_id) REFERENCES feedback(feedback_id),
  FOREIGN KEY (payment_id) REFERENCES payment(payment_id),
  FOREIGN KEY (seller_id) REFERENCES seller(seller_id),
)

