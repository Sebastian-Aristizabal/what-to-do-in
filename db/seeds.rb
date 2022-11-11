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

user_2 = User.new(first_name: "Manuel", last_name: "Osorio Marín", email: "sebastian@gmail.com", password: "123456"  )
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
photo_2 = URI.open("https://vivirenelpoblado.com/wp-content/uploads/2020/06/Museo-El-Castillo.jpg")
plan_1.photos.attach(io: photo_2, filename:"photo_castillo.png", content_type: "image/png")
plan_1.save!


plan_2 = Plan.new(title:"Jardín Botánico de Medellín", video_url:"http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4", details:"Jardín Botánico de Medellín", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 16:30:00", address:"Estación Universidad, Medellín", link_web:"www.botanicomedellin.org", instagram_link:"www.instagram.com/jardinbotanicodemedellin", facebook_link:"", free: true, category_id: category_1.id, user_id: user_1.id)
photo_2 = URI.open("https://www.medellin.travel/wp-content/uploads/2020/07/Cover-Jardi%CC%81n-Bota%CC%81nico.jpg")
plan_2.photos.attach(io: photo_2, filename:"photo_jardin.png", content_type: "image/png")
plan_2.save!

plan_15 = Plan.new(title: "Parque Explora", video_url: "", details: "El Parque Explora es un museo interactivo de ciencias en Medellín, Colombia, y un símbolo de transformación social desde la educación. Está formado por un acuario con énfasis en la Amazonia, un planetario, un taller público de experimentación -Exploratorio- y más de 300 experiencias interactivas  para la apropiación social del conocimiento. Cuenta con exposiciones dedicadas a temas como las neurociencias, la música, el tiempo, las historias de la gente y los medios de comunicación que han permitido contarlas.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"CARRERA 52 #73 - 75 MEDELLÍN", link_web:"https:www.parqueexplora.org", instagram_link:"https://www.instagram.com/parqueexplora/", facebook_link:"https://web.facebook.com/ParqueExplora", free: false, category_id: category_1.id, user_id: user_1.id  )
photo_15 = URI.open("https://www.solopaisas.com.co/wp-content/uploads/2018/01/parque-explora-1-1.png")
plan_15.photos.attach(io: photo_15, filename:"photo_explora.png", content_type: "image/png")
photo_16 = URI.open("https://filmedellin.com/wp-content/uploads/2019/04/Parque-Explora-3.jpg")
plan_15.photos.attach(io: photo_16, filename:"photo_explora2.png", content_type: "image/png")
plan_15.save!

plan_16 = Plan.new(title: "Museo de Arte Moderno de Medellín", video_url: "", details: "Desde su creación en 1978, el Museo de Arte Moderno de Medellín ha sido un museo vivo, urbano y actual, un espacio de encuentro, conocimiento y disfrute en el que tienen cabida manifestaciones artísticas y culturales contemporáneas y diversas.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Cra. 44 #19a-100 Medellín", link_web:"https://www.elmamm.org/", instagram_link:"https://www.instagram.com/elmamm/", facebook_link:"https://web.facebook.com/mammedellin", free: false, category_id: category_1.id, user_id: user_1.id)
photo_17 = URI.open("https://universes.art/fileadmin/_migrated/gridelement_uploads/MAMM-1010-500_01.jpg")
plan_16.photos.attach(io: photo_17, filename: "MAMM.png", content_type: "image/png")
photo_18 = URI.open("https://files.rcnradio.com/public/migration/CufpjXtXgAEyIqC.jpg")
plan_16.photos.attach(io: photo_18, filename: "MAMM2.png", content_type: "image/png")
plan_16.save!

plan_17 = Plan.new(title: "Planetario de Medellín Jesús Emilio Ramírez", video_url: "", details: "El Planetario de Medellín Jesús Emilio Ramírez González ofrece a sus visitantes un escenario a la altura de los más modernos del mundo, con un domo digital para experiencias de inmersión de alta calidad. Trocamos la mirada de los planetarios tradicionales hacia las ciencias del espacio, e incorporamos las ciencias de la tierra para observar, entre el pasmo y la esperanza, nuestro desconocido planeta.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"CARRERA 52 N. 71 - 117 MEDELLÍN", link_web:"https://www.planetariomedellin.org/", instagram_link:"https://www.instagram.com/planetariomed/", facebook_link:"https://web.facebook.com/PlanetarioMed", free: false, category_id: category_1.id, user_id: user_1.id)
photo_19 = URI.open("https://imgix.cosmicjs.com/61890640-ba76-11ec-a7cc-25c8f0ace24d-planetario-medellin.png")
plan_17.photos.attach(io: photo_19, filename: "planetario.png", content_type: "image/png")
photo_20 = URI.open("https://images.squarespace-cdn.com/content/v1/5ca8d816e666691f0629165e/1559915132433-X5N2GYYJIOZXWR7G59Y0/10-PLANEX.jpg?format=2500w")
plan_17.photos.attach(io: photo_20, filename: "planetario2.png", content_type: "image/png")
plan_17.save!

plan_18 = Plan.new(title: "Graffiti Tour Comuna 13", video_url: "", details: "Uno de los coloridos murales que podrás encontrarte en el Graffiti Tour de la Comuna 13. Esta famosa Comuna ha logrado ser resiliente creyendo en los caminos de la convivencia y el arte, y ahora, gracias a la impresionante transformación de Medellín, tú puedes ser testigo de esta maravillosa historia.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Comuna 13 Medellin", link_web:"", instagram_link:"https://www.instagram.com/comuna13enmedellin/", facebook_link:"", free: true, category_id: category_1.id, user_id: user_1.id)
photo_21 = URI.open("https://cloudfront-us-east-1.images.arcpublishing.com/infobae/TUYTDETVPNDGLIWIWILQH2TY6Q.jpg")
plan_18.photos.attach(io: photo_21, filename: "comuna13.png", content_type: "image/png")
photo_22 = URI.open("https://awake.travel/storage/courses/1570726984640437.jpg")
plan_18.photos.attach(io: photo_22, filename: "lacomuna13.png", content_type: "image/png")
plan_18.save!

plan_19 = Plan.new(title: "Museo Casa de la Memoria", video_url: "", details: "El Museo Casa de la Memoria fue creado en 2006 —a partir de una iniciativa del Programa de Atención de Víctimas de la Alcaldía de Medellín— con el fin de contribuir desde el ejercicio de la memoria en escenarios de diálogos abiertos y plurales, críticos y reflexivos, a la comprensión y superación del conflicto armado y las diversas violencias de Medellín, Antioquia y del país.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Calle 51 #36 - 66 Medellín", link_web:"https://www.museocasadelamemoria.gov.co/", instagram_link:"https://www.instagram.com/museocasadelamemoria.med/", facebook_link:"https://web.facebook.com/MuseoCasadelaMemoria", free: true, category_id: category_1.id, user_id: user_1.id)
photo_23 = URI.open("https://images.adsttc.com/media/images/5744/0196/e58e/ce1e/dd00/0113/large_jpg/MCM-IRM_%2826%29.jpg?1464074628")
plan_19.photos.attach(io: photo_23, filename: "memoria.png", content_type: "image/png")
photo_24 = URI.open("https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/6LSXT2UYXBBHVIU47CT37JAGAI.jpg")
plan_19.photos.attach(io: photo_24, filename: "memoria2.png", content_type: "image/png")
plan_19.save!

plan_20 = Plan.new(title: "Plaza Botero", video_url: "", details: "El Parque Berrío, sede del único lugar al aire libre en el mundo que cuenta con 23 esculturas del Maestro Fernando Botero, las cuales fueron donadas en el 2002 a la ciudad y se convertirían en la excusa perfecta para inaugurar la Plaza de las Esculturas, o como todo el mundo la conoce en Medellín, La Plaza Botero. Allí, las esculturas de bronce son expresión viva de la sensualidad que el maestro Botero quiere expresar con su obra a través del volumen.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Av. Carabobo, La Candelaria, Medellín", link_web:"", instagram_link:"", facebook_link:"", free: true, category_id: category_1.id, user_id: user_1.id)
photo_25 = URI.open("https://viajes.nationalgeographic.com.es/medio/2021/12/29/botero-en-medellin_56719041_1200x800.jpg")
plan_20.photos.attach(io: photo_25, filename: "plazabotero.png", content_type: "image/png")
photo_26 = URI.open("https://www.centropolismedellin.com/wp-content/uploads/2020/10/20-Plaza-botero-13.jpg")
plan_20.photos.attach(io: photo_26, filename: "plazabotero2.png", content_type: "image/png")
plan_20.save!

plan_21 = Plan.new(title: "Pueblito Paisa", video_url: "", details: "Los viajeros recorren una réplica de un típico pueblo antioqueño del siglo XX -con iglesia y alcaldía- en la cima del cerro Nutibara, que se levanta 80 m sobre el valle de Aburrá. Desde este sitio, en el que hay restaurantes de comida típica y locales de artesanías, se obtiene una buena vista de Medellin. Allí se erigen esculturas en homenaje al cacique Nutibara y al humorista Guillermo Zuluaga ‘Montecristo’.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Calle 30A Nº 55-64 Medellin", link_web:"", instagram_link:"", facebook_link:"", free: true, category_id: category_1.id, user_id: user_1.id)
photo_27 = URI.open("https://cloudfront-us-east-1.images.arcpublishing.com/infobae/XAA7V7QQHRHR5DN7JQ7BEA3R6Q.jpg")
plan_21.photos.attach(io: photo_27, filename: "paisa.png", content_type: "image/png")
photo_28 = URI.open("https://i0.wp.com/growingglobalcitizens.com/wp-content/uploads/2021/10/AF993EF2-1A07-4AFE-8D60-7FBDB0E3296C_1_201_a.jpeg?fit=1500%2C1125&ssl=1")
plan_21.photos.attach(io: photo_28, filename: "paisa2.png", content_type: "image/png")
plan_21.save!

#-----------------------------

plan_3 = Plan.new(title:"Parque arvi", video_url:"", details:"Un recorrido lleno de historia, naturaleza y mucha agua, caminaremos por senderos veredales, contemplando el paisaje rural de nuestras montañas antioqueñas", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 00:00:00", end_hour:"2022-10-23 23:59:59", address:"Santa Elena, Medellín", link_web:"https://www.parquearvi.org/Paginas/index.aspx", instagram_link:"https://www.instagram.com/parquearvi/", facebook_link: "", free: true, category_id: category_2.id,  user_id: user_2.id)
photo_3 = URI.open("https://www.acimedellin.org/wp-content/uploads/2018/01/parque-arvi.jpg")
plan_3.photos.attach(io: photo_3, filename:"photo_arvi.png", content_type: "image/png")
plan_3.save!

plan_4 = Plan.new(title:"Lago Normandia", video_url:"", details:"Un recorrido lleno de historia, naturaleza y mucha agua, caminaremos por senderos veredales, contemplando el paisaje rural de nuestras montañas antioqueñas", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 00:00:00", end_hour:"2022-10-23 23:59:59", address:"El retiro - Envigado", link_web:"", instagram_link:"https://www.instagram.com/viajeapie_", facebook_link: "", free: true,  category_id: category_2.id, user_id: user_2.id)
photo_4 = URI.open("https://cdn.baquianos.com/img/blog/2019/29/humedales5-2ftx640.jpg")
plan_4.photos.attach(io: photo_4, filename:"photo_normadia.png", content_type: "image/png")
plan_4.save!

plan_22 = Plan.new(title: "Parque de la Conservación", video_url: "", details: "Un pulmón verde lleno de vida en medio de la ciudad de Medellín, y desde allí nos proyectamos para generar consciencia, transformar comportamientos, proteger el medio ambiente y su biodiversidad con un enfoque ecosistémico, tanto al interior de nuestro Parque como en otros territorios. El Parque de la Conservación es una entidad privada sin ánimo de lucro con 60 años de funcionamiento, perteneciente a la Sociedad de Mejoras Públicas de Medellín S.M.P.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"CRA. 52 20-63 MEDELLÍN", link_web:"https://www.parquedelaconservacion.com/", instagram_link:"https://www.instagram.com/parquedelaconservacion/", facebook_link:"https://web.facebook.com/parquedelaconservacion", free: false, category_id: category_2.id, user_id: user_2.id)
photo_29 = URI.open("https://files.rcnradio.com/2021-01/whatsapp_image_2021-01-08_at_1.12.40_pm_1_0.jpeg")
plan_22.photos.attach(io: photo_29, filename: "paisa.png", content_type: "image/png")
photo_30 = URI.open("https://vivirenelpoblado.com/wp-content/uploads/2021/10/El-parque-de-la-Conservacion-08.jpg")
plan_22.photos.attach(io: photo_30, filename: "paisa2.png", content_type: "image/png")
plan_22.save!

plan_23 = Plan.new(title: "Parque Natural Cerro El Volador", video_url: "", details: "El Parque Natural Regional Metropolitano Cerro El Volador, es el parque natural más grande dentro del área urbana de la ciudad de Medellín, Colombia. Cuenta con un área de 107,13 hectáreas y 82 metros de altura sobre el nivel de la ciudad, y es uno de los llamados cerros tutelares de dicha localidad; Junto el Cerro Pan de Azúcar, Cerro El Salvador, Cerro El Picacho, Cerro La Asomadera, Cerro Las Tres Cruces, Cerro Nutibara y el Cerro Santo Domingo, una red de accidentes geográficos a lo largo del Valle del Aburrá que posee un importante valor histórico, arqueológico, ecológico y turístico.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Cerro El Volador, Medellin", link_web:"https://www.metropol.gov.co/planeacion/areas-protegidas/Paginas/AP/PNRM-Cerro-El-Volador.aspx", instagram_link:"", facebook_link:"", free: true, category_id: category_2.id, user_id: user_2.id)
photo_31 = URI.open("https://cdnwordpresstest-f0ekdgevcngegudb.z01.azurefd.net/es/wp-content/uploads/2021/09/cerro-el-volador.jpg")
plan_23.photos.attach(io: photo_31, filename: "volador.png", content_type: "image/png")
photo_32 = URI.open("https://www.medellin.gov.co/irj/go/km/docs/galerias/Imagenes/Medell%C3%ADn%20Cuenta%202017-2018/20180625_ElVolador-5.jpg")
plan_23.photos.attach(io: photo_32, filename: "volador2.png", content_type: "image/png")
plan_23.save!

plan_24 = Plan.new(title: "Piedra del Peñol", video_url: "", details: "Una de las poblaciones más visitadas en Antioquia es Guatapé. Situada a 75 kilómetros de Medellín en el oriente del Departamento, tiene una historia para contar, que está siendo conocida por los visitantes que llegan diariamente atraídos por las fotografías de miles de viajeros que dejan testimonio de su belleza en las redes sociales.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Guatape, Antioquia", link_web:"", instagram_link:"", facebook_link:"", free: true, category_id: category_2.id, user_id: user_2.id)
photo_33 = URI.open("https://viajerosocultos.com/wp-content/uploads/2022/06/aerial-view-landscape-of-the-rock-of-guatape-piedra-penol-colombia-1-1280x720.jpg")
plan_24.photos.attach(io: photo_33, filename: "volador.png", content_type: "image/png")
photo_34 = URI.open("https://media.viajando.travel/p/ce9fc4e9e8139e37b0ede47be1cec46a/adjuntos/236/imagenes/000/496/0000496566/1200x0/smart/plazoleta-el-zocalo-guatape.png")
plan_24.photos.attach(io: photo_34, filename: "volador2.png", content_type: "image/png")
plan_24.save!

plan_25 = Plan.new(title: "Reserva Natural Cañon Del Río Claro", video_url: "", details: "Un increíble lugar de conservación donde hay actividades imperdibles como la Cueva de los Guácharos. Además es uno de los más representativos planes de turismo ecológico en Medellín. Se trata de una reserva natural que quiere difundir la cultura del turismo ecológico en Medellín, a través de planes sostenibles, alejados del turismo depredador de otras zonas del país. Lugar lleno de tranquilidad y armonía. Puedes acampar y hacer fogata muy cerca del rió con las comodidades de tener batería de baño y duchas de agua fría pero deliciosa.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"San Francisco, Antioquia", link_web:"https://www.rioclaroreservanatural.com/es/inicio/", instagram_link:"https://www.instagram.com/rioclaroreservanaturaloficial/", facebook_link:"", free: true, category_id: category_2.id, user_id: user_2.id)
photo_35 = URI.open("https://hectorpertuz.com/wp-content/uploads/20181104_111923240_iOS-scaled.jpg")
plan_25.photos.attach(io: photo_35, filename: "volador.png", content_type: "image/png")
photo_36 = URI.open("https://natrural.co/wp-content/uploads/2015/10/river_rafting_fraser_river_outdoor_activity_peoples_fun_british_columbia_canada-1150764-small.jpg")
plan_25.photos.attach(io: photo_36, filename: "volador2.png", content_type: "image/png")
plan_25.save!

plan_26 = Plan.new(title: "Parque Piedras Blancas", video_url: "", details: "Excelente lugar en las afueras de la ciudad. Clima fresco, tiene opción de camping. Un lugar en el medio de la naturaleza, de fácil acceso y buenas acomodaciones. Ideal para familias o parejas. Cómodos precios. Trae tus víveres y haz tu pícnic en este hermoso parque, puedes caminar, visitar el mariposario, remar en el lago, entre otras actividades naturales. Se puede llegar en Metrocable directamente desde Medellín.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Piedras Blancas, Santa Elena, Antioquia", link_web:"", instagram_link:"", facebook_link:"", free: true, category_id: category_2.id, user_id: user_2.id)
photo_37 = URI.open("https://www.espacioscomfenalcoantioquia.com/uploads/item/7376f519095af5cfbf0dbf8aa1dce3028a8856fe.jpg")
plan_26.photos.attach(io: photo_37, filename: "volador.png", content_type: "image/png")
photo_38 = URI.open("https://medellinguru.com/wp-content/uploads/2018/06/IMG_3617-1024x768.jpg")
plan_26.photos.attach(io: photo_38, filename: "volador2.png", content_type: "image/png")
plan_26.save!

#-----------------------------

plan_5 = Plan.new(title:"Restaurante El Cielo", video_url:"", details:"El restaurante Elcielo se caracteriza por brindarle a sus clientes una experiencia culinaria única, en la que desde el primer plato se involucran todos los sentidos. Se mezclan técnicas que van desde la cocina de vanguardia hasta métodos tradicionales de la cocina colombiana. Colombia, precisamente, está en cada paso dentro de Elcielo: los ingredientes y quienes los preparan son colombianos que sueñan con que nuestros sabores lleguen a los ciudadanos del mundo", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 12:00:00", end_hour:"2022-10-23 23:00:00", address:"El Poblado, Medellín", link_web:"https://elcielogroup.com/el-cielo", instagram_link:"https://www.instagram.com/elcielomedellin/", facebook_link: "", free: false, category_id: category_3.id,  user_id: user_3.id )
photo_5 = URI.open("https://www.momento24.co/wp-content/uploads/2021/10/RESTAURANTE-EL-CIELO.jpg")
plan_5.photos.attach(io: photo_5, filename:"photo_elcielo.png", content_type: "image/png")
plan_5.save!

plan_6 = Plan.new(title:"El pilon de la villa", video_url:"", details:"Restaurante de comida rapida", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 18:00:00", end_hour:"2022-10-23 23:59:59", address:"Carrera 80 #32, Belén, Medellín", link_web:"", instagram_link:"https://www.instagram.com/elpilondelavilla/", facebook_link: "", free: false, category_id: category_3.id , user_id: user_3.id)
photo_6 = URI.open("https://i.ytimg.com/vi/V4-_lo71tn4/maxresdefault.jpg")
plan_6.photos.attach(io: photo_6, filename:"photo_pilon.png", content_type: "image/png")
plan_6.save!

plan_27 = Plan.new(title: "Mondongo's", video_url: "", details: "En la ciudad de Medellín el día 9 de octubre de 1976, se materializó la idea de crear un pequeño y acogedor restaurante en la Avenida san juan, al cual se le dio el nombre  de Mondongo’s. Los creadores concibieron la idea de un lugar único en su género, dirigido especialmente a reunir las familias Antioqueñas en torno a un plato muy paisa: el Mondongo; y construyeron un concepto con tan buenos resultados, que al poco tiempo se proyectó como uno de los restaurantes de comida típica Antioqueña más reconocidos de la ciudad.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Calle 10 38-38, Medellin", link_web:"https://www.mondongos.com.co/", instagram_link:"https://www.instagram.com/mondongos/", facebook_link:"https://web.facebook.com/RestauranteMondongos", free: false, category_id: category_3.id, user_id: user_3.id)
photo_39 = URI.open("https://media-cdn.tripadvisor.com/media/photo-m/1280/1d/4c/09/12/tipico-antioqueno-jugo.jpg")
plan_27.photos.attach(io: photo_39, filename: "mondongos.png", content_type: "image/png")
photo_40 = URI.open("https://medellinguru.com/wp-content/uploads/2019/01/IMG_7585-1024x895.jpg")
plan_27.photos.attach(io: photo_40, filename: "mondongos2.png", content_type: "image/png")
plan_27.save!

plan_28 = Plan.new(title: "Hatoviejo", video_url: "", details: "Su historia empieza hace más de treinta años con su primera cede en la variante de Las Palmas. En el momentos que ustedes ingresen se van a ver inmersos en lo que es la cultura paisa y además podrán disfrutar de comida típica colombiana (Bandeja Paisa, Ajiaco, Sancocho, Mondong0, Sudado, etc.) complementada con asados.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Cl. 16 #28-60, Medellín", link_web:"https://hatoviejo.com/es/", instagram_link:"https://www.instagram.com/restaurante_hatoviejo/", facebook_link:"", free: false, category_id: category_3.id, user_id: user_3.id)
photo_41 = URI.open("https://hatoviejo.com/prueba/wp-content/uploads/2014/10/Sede-las-Palmas.jpg")
plan_28.photos.attach(io: photo_41, filename: "hatoviejo.png", content_type: "image/png")
photo_42 = URI.open("https://hatoviejo.com/prueba/wp-content/uploads/2014/10/Interior-Hatoviejo-Palmas1.jpg")
plan_28.photos.attach(io: photo_42, filename: "hatoviejo2.png", content_type: "image/png")
plan_28.save!

plan_29 = Plan.new(title: "El Rancherito", video_url: "", details: "Es uno de los restaurantes más reconocidos de comida típica en Medellín por que es excelente para ir a desayunar, almorzar, cenar, tomar el café con una arepa de chócolo en las tardes, mejor dicho, para cualquier ocasión.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Vía Las Palmas, Medellin", link_web:"https://elrancherito.com.co/", instagram_link:"https://www.instagram.com/elrancherito_/", facebook_link:"https://web.facebook.com/RestauranteElRancherito", free: false, category_id: category_3.id, user_id: user_3.id)
photo_43 = URI.open("https://clubintelecto.com/wp-content/uploads/2017/10/1920x1280-ppal-establecimiento-1920x570.jpg")
plan_29.photos.attach(io: photo_43, filename: "rancherito.png", content_type: "image/png")
photo_44 = URI.open("https://dondecelebrar.com/wp-content/uploads/job-manager-uploads/field_cfwjm2359/2021/04/156350743_3982341368453690_3939893991295522831_n.jpg")
plan_29.photos.attach(io: photo_44, filename: "rancherito2.png", content_type: "image/png")
plan_29.save!

plan_30 = Plan.new(title: "Los Perrines del Poblado", video_url: "", details: "Los famosos perros calientes de la carpa roja. Amamos los 🌭,🍔 y 🥓.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Parque El Poblado, Medellin", link_web:"", instagram_link:"https://www.instagram.com/losperrinesdepoblado/", facebook_link:"", free: false, category_id: category_3.id, user_id: user_3.id)
photo_45 = URI.open("https://scontent.feoh8-1.fna.fbcdn.net/v/t1.6435-9/104949918_3115730658541621_2795471650348290155_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEm8capIwxjIvjwsFgky84PSpa1zp9PIvNKlrXOn08i8zxmQC30QDOKYScJw0fllgjNN1hEPtAKvBK3vQ8_am4S&_nc_ohc=kSAimmG-1fgAX-F-wdw&_nc_ht=scontent.feoh8-1.fna&oh=00_AfBuDhdZNu6BpXXjPaHGVcEXJoi5EaFIhVag-w9nn4wIdQ&oe=6390E18C")
plan_30.photos.attach(io: photo_45, filename: "perrines.png", content_type: "image/png")
photo_46 = URI.open("https://fastly.4sqi.net/img/general/width960/25490215_0E7BJrsi4QboI6ZwwzsZDBqQRx0_iQqMi6Gpje6CC8M.jpg")
plan_30.photos.attach(io: photo_46, filename: "perrines2.png", content_type: "image/png")
plan_30.save!

#-----------------------------

plan_7 = Plan.new(title:"Cacique Bar", video_url:"", details:"La mejor música vallenata del mundo, y los mejores temas de Diomedes Diaz", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 21:00:00", end_hour:"2022-10-23 04:00:00", address:"Carrera 70 #44-34, Medellin", link_web:"http://elcacique.com.co", instagram_link:"https://www.instagram.com/elcaciquebar/?hl=es", facebook_link: "",  free: false, category_id: category_4.id,  user_id: user_4.id )
photo_7 = URI.open("https://i.revistapym.com.co/old/2022/08/NFT-discoteca.png?w=1200")
plan_7.photos.attach(io: photo_7, filename:"photo_casiquebar.png", content_type: "image/png")
plan_7.save!

plan_8 = Plan.new(title:"Concierto Bad Bunny - WORLDS HOTTEST TOUR", video_url:"", details:"El concierto del 'Conejo Malo' se llevará a acabo en el estadio Atanasio Girardot de Medellín. El cantante puertorriqueño Bad Bunny, quien en 2021 fue por segundo año consecutivo el artista más escuchado en Spotify, realizará este año su primera gira por estadios de EE. UU. y América Latina.", start_date: Date.today, end_date:5.days.from_now, start_hour:"2022-10-23 18:00:00", end_hour:"2022-10-23 02:00:00", address:"Cra. 74 #48010, Medellín, Laureles", link_web:"https://tuboleta.com/eventos/detalle/bad-bunny-medellin/882674019528", instagram_link:"https://www.instagram.com/badbunnypr/", facebook_link: "", free: false,  category_id: category_4.id, user_id: user_4.id)
photo_8 = URI.open("https://los40.com.co/los40/imagenes/2022/01/28/tendencias/1643383494_395497_1643383615_gigante_normal.jpg")
plan_8.photos.attach(io: photo_8, filename:"photo_badbunny.png", content_type: "image/png")
plan_8.save!

plan_31 = Plan.new(title: "Envy Rooftop", video_url: "", details: "Rooftop ofrece un Lounge/ Bar con Dj en vivo y una innovadora piscina tipo acuario, creando dos espacios integrados para el descanso, la diversión y el entretenimiento.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Parque Lleras, Medellín", link_web:"https://www.thecharlee.com/es/espacios/envy-roof/", instagram_link:"https://www.instagram.com/envyrooftop1/", facebook_link:"https://web.facebook.com/envyrooftop1", free: false, category_id: category_4.id, user_id: user_4.id)
photo_47 = URI.open("https://media-cdn.tripadvisor.com/media/photo-m/1280/14/24/26/a8/envy-rooftop.jpg")
plan_31.photos.attach(io: photo_47, filename: "envy.png", content_type: "image/png")
photo_48 = URI.open("https://www.oyster.com/wp-content/uploads/sites/35/2019/05/envy-rooftop-v14179918-1440.jpg")
plan_31.photos.attach(io: photo_48, filename: "perrines2.png", content_type: "image/png")
plan_31.save!

plan_32 = Plan.new(title: "La Chula", video_url: "", details: "En la Chula urbana vives Medellín con toda su intensidad, la belleza de su gente, el ambiente de sus rumbas y todo el talento de la escena urbana más importante del mundo.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Cra 42 #85b-121, Itagüi, Antioquia", link_web:"https://www.lachula.com.co/medellin", instagram_link:"https://www.instagram.com/lachulamedellin/", facebook_link:"https://web.facebook.com/envyrooftop1", free: false, category_id: category_4.id, user_id: user_4.id)
photo_49 = URI.open("https://www.semana.com/resizer/Uzd-jk62XPw_hftG6z36b8V5ZqM=/1280x720/smart/filters:format(jpg):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/semana/SQ4XJMW46ZCS5HBXAG57N5JSXA.jpg")
plan_32.photos.attach(io: photo_49, filename: "lachula.png", content_type: "image/png")
photo_50 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/22/b4/da/75/the-place-was-awesome.jpg?w=1200&h=1200&s=1")
plan_32.photos.attach(io: photo_50, filename: "lachula2.png", content_type: "image/png")
plan_32.save!

plan_33 = Plan.new(title: "La Tienda de la 70", video_url: "", details: "La Tienda de la 70 un lugar diferente donde todos los días es diciembre y cuando uno se sienta en una mesa parece transportarse al pueblo más típico de Antioquia. Un lugar cuidadosamente decorado como en las grandes tiendas de pueblo, en las que no faltan los cachivaches, las carrascas, los marranos y un gran ambiente navideño. nos identificamos principalmente por nuestros deliciosos pasabocas: tamales, empanadas, chicharrón, albóndigas, arepitas con hogao y muchas mas y lo mejor gratis!! manejamos todos los días una amplia carta de platos nacionales e internacionales, picadas, asados, menú del día, desayunos, bebidas y demas... y ni te imaginas la parranda que se forma cada fin de semana con trovadores, artistas, personajes y show en vivo.", start_date: Date.today, end_date: 5.days.from_now, start_hour:"2022-10-23 09:00:00", end_hour:"2022-10-23 18:00:00", address:"Carrera 70 Medellin", link_web:"", instagram_link:"https://www.instagram.com/latiendadela70/", facebook_link:"https://web.facebook.com/tiendadela70", free: false, category_id: category_4.id, user_id: user_4.id)
photo_51 = URI.open("https://paisgourmet.co/cocinacol/wp-content/uploads/2022/07/la-tienda-de-la-70-cocinacol-6.jpg")
plan_33.photos.attach(io: photo_51, filename: "latienda.png", content_type: "image/png")
photo_52 = URI.open("https://media-cdn.tripadvisor.com/media/photo-m/1280/1a/13/d3/d4/tenemos-todo-lo-bueno.jpg")
plan_33.photos.attach(io: photo_52, filename: "latienda2.png", content_type: "image/png")
plan_33.save!

puts "plans creados"

#seleccion de planes

selected_plans_1 = SelectedPlan.new(user_id: user_5.id, plan_id: plan_4.id, status: 0)
selected_plans_2 = SelectedPlan.new(user_id: user_6.id, plan_id: plan_3.id, status: 2)
selected_plans_1.save
selected_plans_2.save

puts "selected plan creados"
