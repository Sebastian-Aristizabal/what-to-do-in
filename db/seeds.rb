# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

SelectedPlan.destroy_all
Review.destroy_all
Plan.destroy_all
Category.destroy_all
User.destroy_all

#creando usuarios

#propietarios

user_1 = User.new(first_name: "Daniel", last_name: "Soriano" , email: "daniel@gmail.com", password: "123456")
photo_1 = URI.open("https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80")
user_1.photo.attach(io: photo_1, filename:"photo_daniel.png", content_type: "image/png")
user_1.save

user_2 = User.new(first_name: "Sebastián", last_name: "Aristizábal", email: "sebastian@gmail.com", password: "123456"  )
photo_2= URI.open("https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80")
user_2.photo.attach(io: photo_2, filename:"photo_sabastian.png", content_type: "image/png")
user_2.save

user_3 = User.new(first_name: "Andrea", last_name: "Soriana" , email: "dsoariana@gmail.com", password: "123456")
photo_3= URI.open("https://images.unsplash.com/photo-1534126416832-a88fdf2911c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80")
user_3.photo.attach(io: photo_3, filename:"photo_andrea.png", content_type: "image/png")
user_3.save

user_4 = User.new(first_name: "Daniel", last_name: "Rendon" , email: "daniel512@gmail.com", password: "123456")
photo_4= URI.open("https://images.unsplash.com/photo-1485206412256-701ccc5b93ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80 ")
user_4.photo.attach(io: photo_4, filename:"photo_danielrendon.png", content_type: "image/png")
user_4.save

#no propietrarios

user_5 = User.new(first_name: "Beatriz", last_name: "Fernandes", email: "beatriz@gmail.com", password: "123456")
photo_5= URI.open("https://images.unsplash.com/photo-1567336273898-ebbf9eb3c3bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80")
user_5.photo.attach(io: photo_5, filename:"photo_beatriz.png", content_type: "image/png")
user_5.save

user_6 = User.new(first_name: "Manuel", last_name: "Castaño", email: "manuel@gmail.com", password: "123456")
photo_6= URI.open("https://images.unsplash.com/photo-1610216705422-caa3fcb6d158?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80")
user_6.photo.attach(io: photo_6, filename:"photo_manuel.png", content_type: "image/png")
user_6.save

puts "terminando de crear usuarios"

#categorias

category_1 = Category.create!(name:"Culturales")
photo_1 = URI.open("https://res.cloudinary.com/agr230316/image/upload/v1667070021/development/cultural_zp3exf.jpg")
category_1.photos.attach(io: photo_1, filename:"photo_culturales.png", content_type: "image/png")
category_1.save!

category_2 = Category.create!(name:"Ecologicos")
photo_2 = URI.open("https://res.cloudinary.com/agr230316/image/upload/v1667070021/development/ecologico_xfhrl3.jpg")
category_2.photos.attach(io: photo_2, filename:"photo_ecologicos.png", content_type: "image/png")
category_2.save!

category_3 = Category.create!(name:"Gastronomicos")
photo_3 = URI.open("https://res.cloudinary.com/agr230316/image/upload/v1667070022/development/gastronomico_sa7eup.jpg")
category_3.photos.attach(io: photo_3, filename:"photo_gastronomicos.png", content_type: "image/png")
category_3.save!

category_4 = Category.create!(name:"Parties")
photo_4 = URI.open("https://res.cloudinary.com/agr230316/image/upload/v1667070022/development/fiesta_oolk0v.jpg")
category_4.photos.attach(io: photo_4, filename:"photo_parties.png", content_type: "image/png")
category_4.save!

puts "categorias creadas"

#plans

plan_1 = Plan.new(title:"El Castillo Museo y Jardines", video_url:"", details:"El Museo El Castillo es un museo de la ciudad de Medellín, ubicado en el barrio El Poblado. Ofrece exposiciones permanentes de objetos en porcelana y cristal, vitrales, gobelinos, antigüedades, pinturas, esculturas, entre otros", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Cl. 9 Sur #32-269, Medellín, El Poblado", link_web:"www.museoelcastillo.org", instagram_link:"www.instagram.com/museoelcastillo", facebook_link:"", free: false, category_id: category_1.id,  user_id: user_1.id  )
photo_1 = URI.open("https://plazacapital.co/media/k2/items/cache/4e4b1fc9eeea638a4484d9ff6d1e996c_XL.jpg")
plan_1.photos.attach(io: photo_1, filename:"photo_castillo.png", content_type: "image/png")
plan_1.save!


plan_2 = Plan.new(title:"Jardín Botánico de Medellín", video_url:"http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4", details:"Jardín Botánico de Medellín", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 16:30:00", address:"Estación Universidad, Medellín", link_web:"www.botanicomedellin.org", instagram_link:"www.instagram.com/jardinbotanicodemedellin", facebook_link:"", free: true, category_id: category_1.id, user_id: user_1.id)
photo_2 = URI.open("https://www.medellin.travel/wp-content/uploads/2020/07/Cover-Jardi%CC%81n-Bota%CC%81nico.jpg")
plan_2.photos.attach(io: photo_2, filename:"photo_jardin.png", content_type: "image/png")
plan_2.save!

plan_3 = Plan.new(title:"Parque arvi", video_url:"", details:"Un recorrido lleno de historia, naturaleza y mucha agua, caminaremos por senderos veredales, contemplando el paisaje rural de nuestras montañas antioqueñas", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 00:00:00", end_hour:"2022-10-23 23:59:59", address:"Santa Elena, Medellín", link_web:"https://www.parquearvi.org/Paginas/index.aspx", instagram_link:"https://www.instagram.com/parquearvi/", facebook_link: "", free: true, category_id: category_2.id,  user_id: user_2.id)
photo_3 = URI.open("https://www.acimedellin.org/wp-content/uploads/2018/01/parque-arvi.jpg")
plan_3.photos.attach(io: photo_3, filename:"photo_arvi.png", content_type: "image/png")
plan_3.save!

plan_4 = Plan.new(title:"Lago Normandia", video_url:"", details:"Un recorrido lleno de historia, naturaleza y mucha agua, caminaremos por senderos veredales, contemplando el paisaje rural de nuestras montañas antioqueñas", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 00:00:00", end_hour:"2022-10-23 23:59:59", address:"El retiro - Envigado", link_web:"", instagram_link:"https://www.instagram.com/viajeapie_", facebook_link: "", free: true,  category_id: category_2.id, user_id: user_2.id)
photo_4 = URI.open("https://orientemap.com/wp-content/uploads/Retiro_CascadaNormandia_1.jpg")
plan_4.photos.attach(io: photo_4, filename:"photo_normadia.png", content_type: "image/png")
plan_4.save!

plan_5 = Plan.new(title:"Restaurante El Cielo", video_url:"", details:"El restaurante Elcielo se caracteriza por brindarle a sus clientes una experiencia culinaria única, en la que desde el primer plato se involucran todos los sentidos. Se mezclan técnicas que van desde la cocina de vanguardia hasta métodos tradicionales de la cocina colombiana. Colombia, precisamente, está en cada paso dentro de Elcielo: los ingredientes y quienes los preparan son colombianos que sueñan con que nuestros sabores lleguen a los ciudadanos del mundo", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 12:00:00", end_hour:"2022-10-23 23:00:00", address:"El Poblado, Medellín", link_web:"https://elcielogroup.com/el-cielo", instagram_link:"https://www.instagram.com/elcielomedellin/", facebook_link: "", free: false, category_id: category_3.id,  user_id: user_3.id )
photo_5 = URI.open("https://www.momento24.co/wp-content/uploads/2021/10/RESTAURANTE-EL-CIELO.jpg")
plan_5.photos.attach(io: photo_5, filename:"photo_elcielo.png", content_type: "image/png")
plan_5.save!

plan_6 = Plan.new(title:"El pilon de la villa", video_url:"", details:"Restaurante de comida rapida", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 18:00:00", end_hour:"2022-10-23 23:59:59", address:"Carrera 80 #32, Belén, Medellín", link_web:"", instagram_link:"https://www.instagram.com/elpilondelavilla/", facebook_link: "", free: false, category_id: category_3.id , user_id: user_3.id)
photo_6 = URI.open("https://i.ytimg.com/vi/V4-_lo71tn4/maxresdefault.jpg")
plan_6.photos.attach(io: photo_6, filename:"photo_pilon.png", content_type: "image/png")
plan_6.save!

plan_7 = Plan.new(title:"Cacique Bar", video_url:"", details:"La mejor música vallenata del mundo, y los mejores temas de Diomedes Diaz", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 21:00:00", end_hour:"2022-10-23 04:00:00", address:"Carrera 70 #44-34, Medellin", link_web:"http://elcacique.com.co", instagram_link:"https://www.instagram.com/elcaciquebar/?hl=es", facebook_link: "",  free: false, category_id: category_4.id,  user_id: user_4.id )
photo_7 = URI.open("https://i.revistapym.com.co/old/2022/08/NFT-discoteca.png?w=1200")
plan_7.photos.attach(io: photo_7, filename:"photo_casiquebar.png", content_type: "image/png")
plan_7.save!

plan_8 = Plan.new(title:"Concierto Bad Bunny - WORLDS HOTTEST TOUR", video_url:"", details:"El concierto del 'Conejo Malo' se llevará a acabo en el estadio Atanasio Girardot de Medellín. El cantante puertorriqueño Bad Bunny, quien en 2021 fue por segundo año consecutivo el artista más escuchado en Spotify, realizará este año su primera gira por estadios de EE. UU. y América Latina.", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 18:00:00", end_hour:"2022-10-23 02:00:00", address:"Cra. 74 #48010, Medellín, Laureles", link_web:"https://tuboleta.com/eventos/detalle/bad-bunny-medellin/882674019528", instagram_link:"https://www.instagram.com/badbunnypr/", facebook_link: "", free: false,  category_id: category_4.id, user_id: user_4.id)
photo_8 = URI.open("https://los40.com.co/los40/imagenes/2022/01/28/tendencias/1643383494_395497_1643383615_gigante_normal.jpg")
plan_8.photos.attach(io: photo_8, filename:"photo_badbunny.png", content_type: "image/png")
plan_8.save!

puts "plans crados"

#seleccion de planes

selected_plans_1 = SelectedPlan.new(user_id: user_5.id, plan_id: plan_4.id, status: 0)
selected_plans_2 = SelectedPlan.new(user_id: user_6.id, plan_id: plan_3.id, status: 2)
selected_plans_1.save
selected_plans_2.save

puts "selected plan creados"
