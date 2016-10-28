Accent.create!([
  {name: "Charlie Brown Adults", price: "1000.0", description: "You will wah wah wah with the best of them.", in_stock: nil, supplier_id: 1},
  {name: "Sylvester", price: "10000.0", description: "We will teach you Sssthufferin Sssthuccotash.", in_stock: nil, supplier_id: 2},
  {name: "Latka Gravas", price: "100000.0", description: "We will guide you when to Ibbi da and when to Ibbi dont.", in_stock: nil, supplier_id: 1},
  {name: "Swedish Chef", price: "1000000.0", description: "You will hurna burna, and beryk a beryk like no other. If need be we will put a pan on your head - chirr-kens not included.", in_stock: nil, supplier_id: 3}
])
CartedProduct.create!([
  {user_id: 2, accent_id: "2", integer: nil, quantity: 2, status: "removed", order_id: nil},
  {user_id: 2, accent_id: "2", integer: nil, quantity: 2, status: "removed", order_id: nil},
  {user_id: 2, accent_id: "4", integer: nil, quantity: 2, status: "purchased", order_id: 1},
  {user_id: 2, accent_id: "4", integer: nil, quantity: 2, status: "purchased", order_id: 1},
  {user_id: 2, accent_id: "4", integer: nil, quantity: 2, status: "purchased", order_id: 1},
  {user_id: 2, accent_id: "2", integer: nil, quantity: 2, status: "purchased", order_id: 3},
  {user_id: 2, accent_id: "2", integer: nil, quantity: 2, status: "purchased", order_id: 5},
  {user_id: 2, accent_id: "2", integer: nil, quantity: 2, status: "purchased", order_id: 6},
  {user_id: 2, accent_id: "2", integer: nil, quantity: 2, status: "purchased", order_id: 7},
  {user_id: 2, accent_id: "2", integer: nil, quantity: 2, status: "purchased", order_id: 8},
  {user_id: 2, accent_id: "1", integer: nil, quantity: 2, status: "purchased", order_id: 9},
  {user_id: 2, accent_id: "1", integer: nil, quantity: 23, status: "purchased", order_id: 10},
  {user_id: 2, accent_id: "3", integer: nil, quantity: 1, status: "purchased", order_id: 11},
  {user_id: 2, accent_id: "2", integer: nil, quantity: 2, status: "purchased", order_id: 12},
  {user_id: 2, accent_id: "1", integer: nil, quantity: 2, status: "purchased", order_id: 13}
])
Image.create!([
  {name: "Charlie Brown", url: "http://www.benstich.com/wp-content/uploads/2014/04/charliebrown.jpg", accent_id: 1},
  {name: "Sylvester", url: "http://www.picgifs.com/clip-art/cartoons/sylvester/clip-art-sylvester-185634.jpg", accent_id: 2},
  {name: "Andy Kaufman", url: "http://www.straight.com/files/v3/2013/11/Andy_Kaufman_40294.jpg", accent_id: 3},
  {name: "Swedish Chef", url: "http://images4.fanpop.com/image/photos/16800000/Swedish-Chef-swedish-chef-16861480-300-300.jpg", accent_id: 4}
])
Order.create!([
  {user_id: 2, subtotal: "6000000.0", tax: "540000.0", total: "6540000.0"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 2, subtotal: "20000.0", tax: "1800.0", total: "21800.0"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 2, subtotal: "20000.0", tax: "1800.0", total: "21800.0"},
  {user_id: 2, subtotal: "20000.0", tax: "1800.0", total: "21800.0"},
  {user_id: 2, subtotal: "20000.0", tax: "1800.0", total: "21800.0"},
  {user_id: 2, subtotal: "20000.0", tax: "1800.0", total: "21800.0"},
  {user_id: 2, subtotal: "2000.0", tax: "180.0", total: "2180.0"},
  {user_id: 2, subtotal: "23000.0", tax: "2070.0", total: "25070.0"},
  {user_id: 2, subtotal: "100000.0", tax: "9000.0", total: "109000.0"},
  {user_id: 2, subtotal: "20000.0", tax: "1800.0", total: "21800.0"},
  {user_id: 2, subtotal: "2000.0", tax: "180.0", total: "2180.0"}
])
Supplier.create!([
  {name: "Hilarious Accents", email: "ha_ha@hilariousaccents.com", phone: "312-555-1234"},
  {name: "What You Talkin Bout Willis", email: "arnold@wytbw.com", phone: "630-555-1234"},
  {name: "Funny Talkers", email: "funnyguy@funnytalkers.com", phone: "773-555-1234"}
])
User.create!([
  {name: "joe", email: "joe@gmail.com", password_digest: "$2a$10$g98sxnm6SWN2irVsawn7wesPoHK7XapZUeeXq0MJ6ckz5VOpzuTWy", admin: false},
  {name: "AdminBob", email: "adminbob@gmail.com", password_digest: "$2a$10$j8ERxrk1cf6QaThmV8ARWux.WZHtWPhUVt5SF1a9ezEBJ1sJk72hy", admin: true},
  {name: "Bill", email: "bill@gmail.com", password_digest: "$2a$10$GpwmBNpiYjIIKAOWusOsPeTayXCkul77g/VwQX2FQf/orCeaaF8CO", admin: false}
])
