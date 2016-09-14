Accent.create!([
  {name: "Charlie Brown Adults", price: "1000.0", description: "You will wah wah wah with the best of them.", in_stock: nil, supplier_id: 1},
  {name: "Sylvester", price: "10000.0", description: "We will teach you Sssthufferin Sssthuccotash.", in_stock: nil, supplier_id: 2},
  {name: "Latka Gravas", price: "100000.0", description: "We will guide you when to Ibbi da and when to Ibbi dont.", in_stock: nil, supplier_id: 1},
  {name: "Swedish Chef", price: "1000000.0", description: "You will hurna burna, and beryk a beryk like no other. If need be we will put a pan on your head - chirr-kens not included.", in_stock: nil, supplier_id: 3}
])

Supplier.create!([
  {name: "Hilarious Accents", email: "ha_ha@hilariousaccents.com", phone: "312-555-1234"},
  {name: "What You Talkin Bout Willis", email: "arnold@wytbw.com", phone: "630-555-1234"},
  {name: "Funny Talkers", email: "funnyguy@funnytalkers.com", phone: "773-555-1234"}
])


 Image.create([name: "Charlie Brown", url: "http://www.benstich.com/wp-content/uploads/2014/04/charliebrown.jpg", accent_id: 1])
 
 Image.create!([name: "Sylvester", url: "http://www.picgifs.com/clip-art/cartoons/sylvester/clip-art-sylvester-185634.jpg", accent_id: 2])

 Image.create!([name: "Andy Kaufman", url: "http://www.straight.com/files/v3/2013/11/Andy_Kaufman_40294.jpg", accent_id: 3])
 
 Image.create!([name: "Swedish Chef", url: "http://images4.fanpop.com/image/photos/16800000/Swedish-Chef-swedish-chef-16861480-300-300.jpg", accent_id: 4])


