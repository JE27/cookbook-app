Category.create!([
  {name: "Cheap"},
  {name: "Junk Food"},
  {name: "Edible"}
])
Recipe.create!([
  {title: "Egg", chef: "Josh", ingredients: "One live chicken", directions: "grasp chicken firmly, squeeze gently..", image_url: nil, prep_time: 131, user_id: nil},
  {title: "Hand sandwich", chef: "Bad Josh", ingredients: "left hand, right hand, lettuce, pickle,onion", directions: "place LPO on left hand, top with right hand", image_url: nil, prep_time: 166, user_id: nil}
])
