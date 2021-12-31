 # This file should contain all the record creation needed to seed the database with its default values.
 # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

 # Examples:

 #  movies = Movie.create([{ name: "Star Wars" },
 # { name: "Lord of the Rings" }])
  
 #  Character.create(name: "Luke", movie: movies.first)

# Author.create([{name:"mohan"},
#  {name:"satyam"} ])

# Book.create([{name:"Over Thinking", author_id:1},
#  {name:"Over Speeding", author_id:2},])

# Assembly.create([{name:"wheel"},
#  {name:"brake"},
#  {name:"bumper"},
#  {name:"engine"} ])

# Part.create([{part_number:"00011"},
#  {part_number:"01111"},
#  {part_number:"12001"},
#  {part_number:"00210"}])


# Writer.create([{name:"Harper Lee"},
#  {name:"Leo Tolstoy"},
#  {name:"Paulo Coel "},
#  {name:"Miguel "},
#  {name:"Charlotte"},
#  {name:"F. Scott"},
#  {name:"Emily Bront"},
#  {name:"Jane Auste"},
#  {name:"J.D. Saling"}])

# Customer.create([{name:"Sunder"},
#  {name:"Sushil"},
#  {name:"Shubham"},
#  {name:"Sumit"},
#  {name:"Sunil"}])

#  Distributor.create([{name:"Sachin"},
#  {name:"Satyam"},
#  {name:"Ravinder"}])

# Novel.create([{title:"To KIll a Mockingbird", published_year:2000, price:110, out_of_print: false, writer_id:1, distributor_id:1},
#  {title:"War and Peace", published_year:2001, price:110, out_of_print: false, writer_id:2, distributor_id:1},
 # {title:"The Alchemist", published_year:2000, price:200, out_of_print: false, writer_id:3, distributor_id:1},
#  {title:"Don Quixote", published_year:2001, price:200, out_of_print: false, writer_id:4, distributor_id:2},
#  {title:"Jane Eyre", published_year:2002, price:200, out_of_print: false, writer_id:5, distributor_id:2},
#  {title:"The Great Gatsby", published_year:2000, price:200, out_of_print: false, writer_id:6, distributor_id:2},
#  {title:"Wuthering Heights", published_year:2002, price:250, out_of_print: false, writer_id:7, distributor_id:3},
#  {title:"Pride and Prejudice", published_year:2000, price:250, out_of_print: true, writer_id:8, distributor_id:3},
#  {title:"The Catcher in the Rye", published_year:2000, price:110, out_of_print: true, writer_id:9, distributor_id:3} ])

 # Review.create([{body:"Great Novel", rating:"8", customer_id:1, novel_id:1},
 # {body:"Good Novel", rating:"8", customer_id:1, novel_id:2},
 # {body:"Great Novel", rating:"9", customer_id:2, novel_id:1},
 # {body:"Great Novel", rating:"8", customer_id:3, novel_id:9},
 # {body:"Great Novel", rating:"8", customer_id:4, novel_id:5},
 # {body:"Great Novel", rating:"8", customer_id:1, novel_id:6},
 # {body:"Great Novel", rating:"8", customer_id:4, novel_id:9},
 # {body:"Good Novel", rating:"9", customer_id:2, novel_id:5},
 # {body:"Great Novel", rating:"10", customer_id:2, novel_id:4},
 # {body:"Great Novel", rating:"8", customer_id:4, novel_id:6},
 # {body:"Great Novel", rating:"8", customer_id:5, novel_id:3},
 # {body:"Great Novel", rating:"8", customer_id:4, novel_id:7}])

 # Order.create([{order_date: DateTime.now, status:1, customer_id:1},
 # {order_date: DateTime.now, status:2, customer_id:1},
 # {order_date: DateTime.now, status:1, customer_id:1},
 # {order_date: DateTime.now, status:2, customer_id:2},
 # {order_date: DateTime.now, status:1, customer_id:3},
 # {order_date: DateTime.now, status:2, customer_id:4},
 # {order_date: DateTime.now, status:0, customer_id:5},
 # {order_date: DateTime.now, status:3, customer_id:1},
 # {order_date: DateTime.now, status:1, customer_id:3},
 # {order_date: DateTime.now, status:1, customer_id:5},
 # {order_date: DateTime.now, status:2, customer_id:1}])

# Novel.find_by(id:1).update(price:"110")
