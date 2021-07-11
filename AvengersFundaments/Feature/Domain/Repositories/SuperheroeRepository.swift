//
//  VillainRepository.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 10/7/21.
//

import Foundation

class SuperheroeRepository {
    var superheroeSample: Superheroes {[
        Superheroe(name: "Black Panther",
                   lastname: "",
                   image: "img_heroe_black_panther",
                   score: 4.0,
                   description: "Pantera Negra (T'Challa) (del inglés original, Black Panther) es un superhéroe de la compañía estadounidense Marvel Comics, creado por Stan Lee y Jack Kirby para el número 52 de The Fantastic Four. Es el primer superhéroe de tez negra de la historia de Marvel y se debe destacar que el personaje fue creado con anterioridad al Partido Pantera Negra, el cual fue fundado en octubre del mismo año. Es el rey y protector de la ficticia nación africana de Wakanda. Además de poseer habilidades mejoradas logradas a través de rituales antiguos de Wakanda de beber la esencia de la hierba en forma de corazón, T'Challa también confía en su dominio de la ciencia, el entrenamiento físico riguroso, las habilidades de combate mano a mano y el acceso a la riqueza y la avanzada tecnología de Wakanda para combatir a sus enemigos que amenacen su cultura y tradiciones."),
        Superheroe(name: "Black Widow",
                   lastname: "",
                   image: "img_heroe_black_widow",
                   score: 3.0,
                   description: "Natasha nació en Stalingrado (ahora Volgogrado), Rusia. La primera y más conocida Viuda Negra, es una agente rusa entrenada como espía, artista marcial y francotiradora, y equipada con un arsenal de armas de alta tecnología, que incluye un par de armas energéticas montadas en la muñeca y apodada 'Piquete de la Viuda'. No usa traje durante sus primeras apariciones, sino simplemente ropa de noche y un velo. Romanova eventualmente deserta a Estados Unidos por razones que incluyen su amor por el arquero criminal convertido en superhéroe, Hawkeye. Los primeros indicios de la infancia de Natasha Romanova provienen de Ivan Petrovich, quien se presenta como su chofer de mediana edad y confidente en Amazing Adventures de Black Widow de los años setenta. El hombre le cuenta a Matt Murdock cómo una mujer le había otorgado la custodia de la pequeña Natasha justo antes de su muerte durante la Batalla de Stalingrado en otoño de 1942. En consecuencia, se había sentido comprometido a criar a la huérfana como un padre sustituto y finalmente se había entrenada como Espía soviética, ansiosa por ayudar a su patria.2​ En otro flashback, ambientado en la ficticia isla de Madripoor en 1941, Petrovich ayuda al Capitán América y al mutante, Logan, quien luego se convertiría en el súper agente canadiense y héroe disfrazado de Wolverine, para rescatar a Natasha de los nazis."),
        Superheroe(name: "Captain America",
                   lastname: "",
                   image: "img_heroe_captain_america",
                   score: 2.0,
                   description: "Steve Rogers, alias Capitán América es un personaje ficticio, un superhéroe, miembro y líder de los Vengadores del universo de Marvel Comics. Su primera aparición fue en su propia historieta Captain America Comics #1 (marzo de 1941) y fue creado por Joe Simon y Jack Kirby. Steve nació durante la depresión y creció convirtiéndose en un joven escuálido de una familia pobre. Su padre murió cuando él era un niño; y su madre, cuando era un adolescente. Horrorizado por el ascenso de Hitler, intento enlistarse pero es rechazado debido a la fragilidad de su cuerpo. Su determinación atrae la atención del General Chester Phillips que le ofrece entrar al proyecto: renacimiento, sometiéndolo al suero del Súper Soldado. El suero es un éxito y transforma a Steve en un ser casi perfecto con fuerza, agilidad, resistencia e inteligencia al máximo. Se le entrega un uniforme patriótico y un escudo hecho de una aleación de vibranium, convirtiendo a Steve Rogers en el Capitán América."),
        Superheroe(name: "Dr. Strange",
                   lastname: "",
                   image: "img_heroe_dr_strange",
                   score: 5.0,
                   description: "La historia de origen del personaje relata que una vez fue un cirujano brillante pero egoísta. Después de que un accidente automovilístico dañara gravemente sus manos y obstaculiza su capacidad para realizar una cirugía, busca una forma de repararlas encontrándose con el Anciano. Después de convertirse en uno de los alumnos del Hechicero Supremo, se convierte en un practicante tanto de las artes místicas como de las artes marciales. Además de conocer muchos hechizos poderosos, tiene un traje con dos objetos místicos: la Capa de Levitación y el Ojo de Agamotto, que le otorgan poderes adicionales. Strange es ayudado en el camino por su amigo y sirviente, Wong, y una gran variedad de objetos místicos. Toma residencia en una mansión llamada Sanctum Sanctorum, ubicado en la ciudad de Nueva York. Más tarde, Strange toma el título de Hechicero Supremo."),
        Superheroe(name: "Gamora",
                   lastname: "",
                   image: "img_heroe_gamora",
                   score: 1.0,
                   description: "Gamora es la última de su especie, los Zen Whoberi, quienes fueron exterminados por los Badoon (en su línea temporal original, su especie fue exterminada por la Iglesia Universal de la Verdad). Thanos encontró a la niña y decidió utilizarla como un arma. Gamora fue criada y entrenada por Thanos para asesinar a Magus, una malvada versión alterna de Adam Warlock. Thanos mostró su poca humanidad en su infancia, pero Gamora fue muy leal al hombre que le prometió la oportunidad de vengar la muerte de su familia. Gamora pronto dominó las artes marciales, ganándose el apodo de 'la mujer más letal en toda la galaxia'. Cuando ella era una adolescente, Thanos la llevó en un viaje. Gamora desobedeció las órdenes de Thanos, y debido a esto entró en conflicto con unos maleantes. Ella fue superada enormemente en número, y a pesar de sus habilidades fue derrotada y luego violada por uno de los agresores. Thanos la encontró medio muerta, y a su vez asesinó a todos los agresores y le devolvió la salud, mejorando cibernéticamente sus habilidades a niveles sobrehumanos."),
        Superheroe(name: "Hulk",
                   lastname: "",
                   image: "img_heroe_hulk",
                   score: 3.0,
                   description: "Después de una exposición accidental a los rayos gamma durante la detonación de una bomba experimental, Banner se transforma físicamente en Hulk cuando está sometido a estrés emocional, a su voluntad o en contra de ella, lo que a menudo lleva a destrozos y conflictos que complican la vida civil de Banner. El nivel de fuerza de Hulk se transmite normalmente de forma proporcional a su nivel de ira. Comúnmente retratado como un salvaje furioso, Hulk ha sido representado con otras personalidades basadas en la mente fracturada de Banner, desde una fuerza descerebrada y destructiva hasta un brillante guerrero o genio científico por derecho propio. A pesar del deseo de soledad tanto de Hulk como de Banner, el personaje tiene un gran elenco de apoyo, que incluye al amor de Banner, Betty Ross, su amigo Rick Jones, su prima She-Hulk, sus hijos Hiro-Kala y Skaar, y sus cofundadores del equipo de superhéroes, Los Vengadores. Sin embargo, su poder incontrolable lo ha llevado a entrar en conflicto con sus compañeros héroes y otros."),
        Superheroe(name: "Ironman",
                   lastname: "",
                   image: "img_heroe_ironman",
                   score: 5.0,
                   description: "Anthony Edward Stark conocido como Tony Stark, un multimillonario magnate empresarial estadounidense, playboy e ingenioso científico, quien sufrió una grave lesión en el pecho durante un secuestro. Cuando sus captores intentan forzarlo a construir un arma de destrucción masiva crea, en cambio, una armadura para salvar su vida y escapar del cautiverio. Más tarde, Stark desarrolla su traje, agregando armas y otros dispositivos tecnológicos que diseñó a través de su compañía, Industrias Stark. Él usa el traje y las versiones sucesivas para proteger al mundo como Iron Man. Aunque al principio ocultó su verdadera identidad, Stark finalmente declaró que era, de hecho, Iron Man en un anuncio público."),
        Superheroe(name: "Marvel Captain",
                   lastname: "",
                   image: "img_heroe_marvel_captain",
                   score: 1.0,
                   description: "La ex piloto y agente de inteligencia de la Fuerza Aérea, Carol Danvers, persiguió su sueño de explorar el espacio como empleada de la NASA, pero su vida cambió para siempre cuando se transformó accidentalmente en un híbrido humano-Kree con poderes extraordinarios. Ahora Carol es la más reciente guerrera en abrazar el manto de Capitana Marvel, quien ha tomado su lugar como uno de los héroes más poderosos del mundo."),
        Superheroe(name: "Spiderman",
                   lastname: "",
                   image: "img_heroe_spiderman",
                   score: 2.0,
                   description: "Peter Benjamin Parker es el hijo de Richard Parker y Mary Fitzpatrick Parker, ambos agentes de la CIA y posteriormente de S.H.I.E.L.D.(una agencia secreta). Su última misión fue infiltrase como agentes dobles en la organización de Albert Malik, que tomó el nombre de Red Skull. Albert averiguó sus planes y provocó un accidente aéreo que acabó con sus vidas. Después de que sus padres murieran, el pequeño Peter quedó al cuidado de sus tíos Benjamin Parker y May Reilly-Parker, que vivían en Forest Hills, que es un barrio de Queens, Nueva York."),
        Superheroe(name: "Thor",
                   lastname: "",
                   image: "img_heroe_thor",
                   score: 4.0,
                   description: "El padre de Thor, Odín, decide que su hijo necesita que le enseñe la humildad y, en consecuencia, coloca a Thor (sin recuerdos de la divinidad) en el cuerpo y los recuerdos de un estudiante de medicina humana existente, parcialmente discapacitado, Donald Blake.7​Después de convertirse en médico y de vacaciones en Noruega, Blake presencia la llegada de una partida de exploración alienígena. Blake huye de los extraterrestres a una cueva. Después de descubrir el martillo de Thor, Mjolnir (disfrazado como un bastón) y golpearlo contra una roca, se transforma en el dios del trueno.8​Más tarde, en Thor# 159, se revela que Blake siempre ha sido Thor, el hechizo de Odin lo ha llevado a olvidar su historia como El Dios del Trueno y creerse mortal.")
    ]}
}
