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


<div class="row">
  <div class="col s12 m6">
    <div class="card small" id="nav">
      <div class="card-content white-text">
        <span class="card-title">Computers</span>
        <p>Dell, Asus, Mac, Lenovo and More!</p>
      </div>
      <div class="card-action">
        <%= link_to 'New Product', products_path %>
      </div>
    </div>
  </div>
  <div class="col s12 m6">
    <div class="card small" id="nav">
      <div class="card-content white-text">
        <span class="card-title">Tablets</span>
        <p>Samsung, Asus, Acer, and More!</p>
      </div>
      <div class="card-action">
        <%= link_to 'New Product', new_product_path %>
      </div>
    </div>
  </div>
  <div class="col s12 m6">
    <div class="card small" id="nav">
      <div class="card-content white-text">
        <span class="card-title">Phones</span>
        <p>iPhone, LG, Samsung, and More!</p>
      </div>
      <div class="card-action">
        <%= link_to 'New Product', products_path %>
      </div>
    </div>
  </div>
</div>
