# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

info = [['Embu das Artes',
    'Embu das Artes conta com várias opções de compras',
    'Celeiro de pintores, escultores, músicos e poetas, a estância turística abriga uma famosa feira de arte e artesanato que reúne mais de 450 expositores, com produtos de couro e tecido, pinturas e esculturas. A seção do verde, com hortifrutigranjeiros, flores e plantas ornamentais, complementa a diversidade. Vale esticar o passeio pelas lojas de móveis rústicos, antiquários, galerias de arte e ateliês no centro histórico depois de provar os comes e bebes das barracas da feira.'],

    ['Águas de São Pedro',
    'Tranquilidade em uma Estância maravilhosa.',
    'Destino para quem busca tranquilidade. Entre as atrações estão estâncias e águas famosas por suas propriedades terapêuticas – as fontes Gioconda, Juventude e Almeida Salles são as que mais atraem visitantes. Para respirar o ar puro de uma cidade típica do interior, uma dica é o Parque das Águas, com 64 mil metros quadrados de jardins, gramados, pistas de corrida, skate e ciclovia. Com crianças a tiracolo, não deixe de visitar o Thermas Water Park, cujos toboáguas fazem a diversão dos pequenos.'],

    ['Boituva',
    'Mude a sua rotina com um passeio de balão',
    'Conhecida como a capital do paraquedismo, possui um centro para a prática do esporte com infraestrutura completa, de instrutores habilitados a aviões. Há dezesseis escolas que oferecem o passeio, como a Paraquedismo Boituva – tel. (15) 3263-1645 –, que já levou os atores Daniele Suzuki e Jonatas Faro e a apresentadora Anna Hickmann para saltar. Passeios de balão são outra atração da cidade. A aventura proporciona uma vista incrível das paisagens da região e dura cerca de 40 minutos. É necessário agendar com empresas como a Passeio de Balão pelo telefone – tel. (11) 2059-0761.'],

    ['Campos do Jordão',
    'Montanhas, frio e vinho',
    'A cidade associada ao luxo, chamada de Suíça brasileira, atrai casais endinheirados principalmente na estação mais fria do ano com a programação extensa de música clássica do Festival Internacional de Inverno. Outros atrativos são os aconchegantes chalés e restaurantes que servem de fondues a pratos com trutas, peixe mais famoso da serra. Tirolesa, patinação no gelo e passeio a cavalo são algumas das atividades disponíveis na temporada.'],

    ['Guarujá',
    'Mesmo com pouco tempo, dá para aproveitar um dia na praia',
    'Com bons restaurantes, bares, hotéis e shopping centers, a cidade litorânea com boa infraestrutura vive lotada no verão. Para badalação, as praias Pitangueiras, Astúrias, Enseada e Pernambuco são as indicadas. Mas se a ideia é fugir das multidões, percorra praias como Camburi, Branca e Iporanga, cujo acesso é controlado por condomínio no km 17,5 da estrada para Bertioga. Esportistas também têm vez e podem praticar escalada, surfe e caminhadas em diversas trilhas.'],

    ['Juquitiba',
    'O local para esportes radicais',
    'Referência em esportes de aventura no estado de São Paulo, o destino atrai interessados em praticar tirolesa, arvorismo, canoagem e rapel, atividades que custam de R$ 20 a R$ 150 por pessoa, realizadas em áreas preservadas da Mata Atlântica. O destaque é o rafting no Rio Juquiá, que faz da cidade a sede de campeonatos importantes, com suas corredeiras, ondas e quedas. Antes de sair de casa, reserve o passeio com agências como a Canoar Rafting e Expedições – tel. (11) 2856-5777. Não se esqueça de levar uma muda de roupa para troca.'],

    ['Paranapiacaba',
    'Trecho do Rio Mogi na chegada à Raiz da Serra, em Paranapiacaba',
    'O patrimônio arquitetônico da vila ferroviária construída no século 19 para abrigar os trabalhadores da companhia inglesa São Paulo Railway é tombado por órgãos nacionais e estaduais de preservação do patrimônio histórico e artístico. Localizada no alto da Serra do Mar, com bela vista da Mata Atlântica, reúne atrações turísticas como o Museu Castelinho, que conta a história do local, gerenciado pela Prefeitura de Santo André; Clube União Lyra Serrano, sede das principais atividades culturais; Museu Funicular do Trem, que preserva antigas locomotivas; e uma réplica do relógio londrino Big Ben. Promove um Festival de Inverno, com shows musicais e gastronomia, que costuma ocorrer anualmente no mês de julho.'],

    ['São Roque',
    'Esquiando sem neve no interior de SP',
    'Nos 10 quilômetros de extensão da batizada Estrada do Vinho, há muitas vinícolas com boa infraestrutura para receber turistas, com restaurantes e visitas ao setor de produção da bebida. Vale conhecer também a Capela de Santo Antônio e a Casa Grande do Capitão Fernão Paes de Barros, construções da época dos bandeirantes, feitas de taipa de pilão. Esqui e snowboard podem ser praticados no Ski Mountain Park, em um morro no alto da cidade.'],

    ['Santos',
    'Santos oferece passeios atraentes pertinho de São Paulo',
    'Em uma das cidades mais antigas do país, perambule pelas ruas do centro histórico a pé ou de bonde, cujo passeio de 15 minutos leva o visitante para as principais atrações. Conheça ainda o Aquário Municipal, o Museu do Porto, que registra sua história por meio de imagens, e a Bolsa Oficial de Café, que reúne em um imponente prédio, com painéis e vitrais de Benedito Calixto, cafeteria e museu. Se sentir falta da brisa do mar, programe uma caminhada pela orla.'],

    ['Vinhedo',
    'Parques Temáticos',
    'O km 72 da Rodovia dos Bandeirantes tem dois importantes pontos para quem viaja com criança: o Hopi Hari, principal parque de diversões do país, com mais de cinquenta brinquedos, e o aquático Wet`n Wild, equipado com piscinas e toboáguas voltadas para adultos e pequenos. Aproveite a ida à cidade para fazer compras no Outlet Premium São Paulo, um shopping a céu aberto que abriga oitenta lojas de grifes nacionais e internacionais em terreno de 100 mil metros quadrados. A festa da uva, em fevereiro, também costuma atrair visitantes para a região.'],

    ['Pedreira',
    'Muitas opções para comprar Porcelanas',
    'Conhecida como "cidade das porcelanas", Pedreira é famosa por ser o destino perfeito para quem procura por objetos para decorar a casa ou matéria prima para artesanato. São mais de 450 lojas que oferecem produtos a preço de fábrica, em sua grande maioria feitos de porcelana e louça, como utensílios para cozinha, esculturas, quadros e vasos.']]

    puts "Seeding DB"

Booking.delete_all
Trip.delete_all

user = User.first

c = 0

10.times {
    t = Trip.new

    t.name = info[c][0]
    t.description = info[c][1]
    t.place = info[c][0]
    t.capacity =  Faker::Number.between(5, 38)
    t.hotel = Faker::Company.name
    t.schedule = info[c][2]
    t.price = Faker::Number.between(249, 789)
    t.trip_end = Faker::Date.forward(90)
    t.trip_start = t.trip_end - 2.days
    t.user = user

    t.save
    c += 1
}

puts "Now you have #{Trip.count} Trips"
