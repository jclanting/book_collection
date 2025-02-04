# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.create!([
  { title: "The Great Gatsby", author: "F. Scott Fitzgerald", price: 10.99, published_date: "1925-04-10" },
  { title: "To Kill a Mockingbird", author: "Harper Lee", price: 8.99, published_date: "1960-07-11" },
  { title: "1984", author: "George Orwell", price: 9.99, published_date: "1949-06-08" },
  { title: "Pride and Prejudice", author: "Jane Austen", price: 7.99, published_date: "1813-01-28" },
  { title: "The Catcher in the Rye", author: "J.D. Salinger", price: 11.50, published_date: "1951-07-16" }
])
