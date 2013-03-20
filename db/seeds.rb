urls = ["http://bizhi.zhuoku.com/wall/20060225/Webshots_23009.jpg"]
authors=["Joe","Rose","Blake","Evans","Napo","Clair"]
titles=["tiger","panda","penguin","eagle","bird","cat"]
Emag.destroy_all
30.times do
  a=authors.sample(2)
  t =titles.sample(2)
  Emag.create content: "http://vector.us/files/images/1/4/148292/animals_benji_park_baby_head_monkey_outline_happy_face_cartoon_free_mammals_cute_animal_mammal_fest_monkeys.jpg",
      title: t[1],
      author: a[1],
      description: "interesting animals",
      user_id: rand(0..5)

end