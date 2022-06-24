//
//  Page.swift
//  isJornal
//
//  Created by Nikita Molodorya on 17.12.2021.
//

import UIKit

class Page: UIViewController {
    
    // Navigation button
    @IBOutlet weak var left: UIBarButtonItem!
    
    
    // View
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var text: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text.text = textForPage
        
//        text.textContainerInset = UIEdgeInsets(top: 50, left: 25, bottom: 0, right: 25)
        hideKeyboardOnTap()
    }
    
    @IBAction func left(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    
    

}




public let textForPage = """
Чтобы доставить карты и другие продукты Тинькофф некоторым клиентам, представители банка добираются до занесенных снегом сибирских деревень, горных кавказских селений и даже поднимаются на Эльбрус.

Они преодолевают дорогу пешком, на санях, снегоходах и горных лыжах. По пути с ними случаются удивительные встречи и захватывающие происшествия: бывает, что машину сносит в кювет, а от огромной овчарки удается увернуться только чудом.

Собрали в этой статье 9 удивительных историй о доставке карт в труднодоступные места по всей России, которые рассказали представители Тинькофф Банка.


«Вариантов спуска было два: лыжи и сноуборд»

Заурбек
освоил сноуборд
Однажды я устанавливал терминал Тинькофф Банка на Эльбрусе. Для этого нужно было подняться на станцию «Гарабаши» на высоте 3850 метров.

Мы с клиентом преодолели две станции канатной дороги и добрались до нужного места. В этот момент он сообщил, что забыл паспорт в машине на стоянке. Спустились, забрали паспорт и снова поднялись на гору.

Чем выше мы поднимались, тем холоднее становилось, а я был одет по погоде в городе. Я не привык к перепадам высот и чувствовал головокружение и дрожь в ногах, в глазах темнело. Но держался стойко, и клиент ничего не заметил.

Интернет на горе работал с перебоями, поэтому на установку терминала ушло много времени. Мы не успевали его установить до 17:00, а после этого закрывалась канатная дорога. Клиент переживал, что я не смогу спуститься, и предложил перенести встречу. Я спросил: «А как вы спуститесь, если канатку выключат?» Он ответил: «Что-нибудь придумаем».

Терминал установили около 18:00. Клиент с улыбкой спросил: «Стартуем или на дорожку посидим?» Вариантов спуска у меня было всего два: лыжи и сноуборд. До этого я не катался ни на лыжах, ни на сноуборде, но выбора не было. Вниз спустились благополучно, но дорога была долгой: я падал несколько десятков раз.


«Туда только медведи и волки ходят»

Алина
убегала от овчарки
Я работаю в городе Туймазы в Башкортостане. В новогодние каникулы у меня была назначена встреча в отдаленном селе Рассвет Буздякского района. Ехать туда от Туймазы примерно 70—75 километров.

С клиентом мы договорились, что я приеду в Рассвет в назначенный день к 10:00—11:00. Выехала рано, за 20—30 километров до села набрала номер клиента, но его телефон был вне зоны доступа. В этот момент он написал в «Вотсапе» с другого номера сообщение, что ждет меня дома.

Я вбила адрес в навигатор, но он внезапно перестал работать. Связь не ловила, на улице была метель, дороги не видно. Пробиралась через эту пелену со скоростью 5—10 км/ч. По пути мне не встретилось ни одной машины. Было ощущение, что я попала в фильм ужасов.

Через 40 минут такого пути подъехала к селу Рассвет. Связь по-прежнему не работала, и я не увидела ни названий улиц, ни номеров домов. Спросила у единственного прохожего, где искать нужного мне человека: в таких деревнях только по фамилии можно кого-то найти.

Отыскала дом, подошла к воротам — закрыто. Покидала снежки в окно — тишина. Связи по-прежнему нет. Кое-как перелезла через забор и постучалась. В этот момент клиент выглянул в окно, а я боковым зрением увидела, что на меня несется огромная овчарка. От испуга даже не запомнила, как перелетела обратно через забор.

Клиент закрыл собаку в вольере, и я вручила ему карту банка. Когда снова вышла на улицу, заметила, что у всех его соседей тоже овчарки, алабаи и другие крупные собаки, и все они были не на привязи.

Следующая встреча у меня была в селе Буздяк, как оказалось, с местным участковым. Он поинтересовался, откуда я приехала и почему он не мог до меня дозвониться. Когда узнал, что я была в Рассвете, сказал: «Да вы что! Туда же только медведи и волки ходят!»


«Первый и последний раз ездила на санях»

Любовь
проехалась на санях с ветерком
Шесть лет назад я выезжала в районы Башкортостана и проводила по 15—20 встреч в день. Однажды после новогодних праздников приехала в город Белебей. Там все занесло снегом. Из-за непогоды даже отменили междугородний автобус из Октябрьского, и я добиралась на такси.

По приезде начала обзванивать клиентов — жителей ближайших поселков. Они удивлялись, что я добралась до Белебея, но сами не собирались ехать в город на встречу по бездорожью. Но один из них в конце концов все-таки добрался — к моему удивлению, на санях с лошадью. Из разговора я поняла, что в его деревне живут еще как минимум два наших клиента. Он предложил подкинуть меня до деревни на санях, но я отказалась: мне еще нужно было вернуться.

Когда он уехал, позвонил еще один клиент из той же деревни и сказал, что поедет в Белебей через два часа. У меня появилась идея: в деревню — на санях, а обратно — на машине. Я спросила, возможно ли это, и клиент подтвердил: ему в любом случае нужно было в город в магазин.

Перезвонила первому клиенту и сказала, что все же поеду с ним. Это был первый и последний раз, когда я ездила на санях. До деревни было около 10 километров. Провела три встречи, вручила всем карты Тинькофф Банка, а обратно ехала на снегоходе. Клиент оказался охотником, сказал, что у них такие дороги почти каждую зиму и он ездит в город в магазин за покупками для себя и своих соседей-старичков.


«На гору пришлось карабкаться пешком»

Алексей
поднялся на гору
Однажды я отвозил кредитную карту в поселок Кедровка Кемеровской области. Он находится по дороге на горнолыжный курорт Шерегеш.

Приехал в Кедровку, поплутал между немногочисленными строениями и нашел на окраине поселка нужный мне дом. Клиенткой оказалась женщина средних лет. Она рассказала, как они живут вдали от цивилизации. Побеседовали о курочках, коровах и козах, а затем я начал оформлять карту. В этот момент с удивлением обнаружил, что не могу этого сделать: в поселке не работала мобильная связь. Спросить совета у коллег из-за отсутствия сигнала сети тоже не мог. Тогда у меня еще было мало опыта работы и я не знал, что все можно оформить в офлайн-режиме.

Мне помогла клиентка — рассказала, что сигнал можно поймать на вышке сотовой связи в нескольких километрах от ее дома. Мы отправились в путь на моей машине, но на гору, где стояла вышка, пришлось карабкаться пешком. Чувствовал себя закоренелым альпинистом. Через час мы оказались на вершине горы и наконец были вознаграждены хорошим сигналом. Клиентка получила карту Тинькофф Банка на фоне живописного горного пейзажа, а мне надолго запомнилось это короткое путешествие.


«Не нашел адрес ни в одном приложении»

Хамзат
подобрал попутчика
В феврале я должен был отвезти карту Тинькофф Банка в Гудермес в Чечне. Созвонился с клиенткой. Она сообщила, что ждала встречи, но по семейным обстоятельствам ей пришлось уехать в горное село Мескеты.

Я понимал, что добраться туда будет нелегко, но уточнил адрес и добавил, что наш банк доставляет карты по всей России — неважно, село это или город. Вбил адрес в навигатор, но не смог найти его ни в одном приложении.

Выехал в сторону села. Шел снег, на дороге гололед. Как только начал подниматься в горы, спустился густой туман. Я включил противотуманные фары и ехал со скоростью 20 км/ч на протяжении получаса.

Когда поднялся выше, туман рассеялся, и я заметил, что вдоль дороги идет белобородый старик в папахе. Я остановился, поздоровался и предложил его подвезти. Он очень обрадовался и сказал, что живет в селе Мескеты, а туда нелегко добраться. В этот момент я обрадовался еще больше, чем старик.

/spec-tinkoff-black/
Как я заработала 100 000 Р на карте Tinkoff Black
Село небольшое, табличек с адресами на улицах нет. Я довез своего попутчика и попросил подсказать, как мне найти дом моего клиента. Назвал адрес. Удивление на его лице надо было видеть: оказалось, это его дочь. Она удивилась не меньше, когда увидела на пороге отца и меня. Перед обратной дорогой она угостила меня горячим вкусным чаем.


«Вручил карту среди стада коров»

Адам
добрался до пастбища
Однажды клиент позвонил и попросил перенести встречу: в назначенный день ему нужно было уйти на пастбище. Я предложил сообщить, где оно находится, и взять с собой паспорт, а я привезу карту туда. Он уверял, что на машине туда не проехать, а пешком идти сложно: сам он добирается на коне.

Мне хотелось переубедить клиента, но оказалось, что попасть в то место действительно нелегко. Пастбище находилось высоко в горах, и машина перегревалась от нагрузки. Мне пришлось ее оставить и пойти пешком. Путь был нелегким, но в итоге я добрался до клиента.

Вручил ему карту на свежем воздухе, среди стада коров и в окружении нереальной красоты гор. Клиент удивился такому сервису, а я был горд, что все преодолел.


«Дорога стала для меня ралли Париж — Дакар»

Сергей
запомнил расположение пней
В феврале я ездил в деревню в Тюменской области. Она находится в нескольких сотнях километров от Тобольска. Из них 90 километров — асфальтовая дорога, 60 километров — гравийная, а еще почти 80 километров — зимник, то есть дорога, пробитая грейдером на замерзших болотах и реках в лесу. Такой путь мне предстояло преодолеть, чтобы встретиться с местным предпринимателем.

В дорогу я взял все, что могло пригодиться: автомобильный трос, топор, газовую горелку и теплый лыжный костюм. Даже пятирублевую монету под левую пятку положил на всякий случай.

Навигатор показал, что поездка займет пять часов. Первую часть дороги с асфальтовым и гравийным покрытием я преодолел за два часа, а затем начал штурм зимника. С переменным успехом навигатор показывал варианты выезда из деревень, которые лежали на пути. Машин на дороге почти не было — мне попался только УАЗ в попутном направлении и Лада во встречном.

Наконец я увидел заветную дорожную табличку с названием деревни. Она располагается рядом с озером Большой Уват, и основной вид заработка в ней — промысловая ловля рыбы. Предприниматель, с которым я встречался, открыл в деревне небольшой торговый киоск. Я должен был выдать ему бизнес-карту Тинькофф Банка и терминал, а еще открыть расчетный счет.

/guide/schet-ip/
Какой счет открыть для ИП
Дозвониться до предпринимателя получилось не сразу. Но в итоге мы успешно провели встречу. Перед обратной дорогой гостеприимные хозяева сытно меня накормили и пожелали доброго пути.

Дорога домой была более быстрой, так как про все подвохи в виде валявшихся выкорчеванных пней я уже помнил. Этот зимник стал для меня ралли Париж — Дакар, но, к счастью, средства спасения не пригодились. Общее время, проведенное в пути, составило девять часов

"""