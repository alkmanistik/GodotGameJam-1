# GodotGameJam-1
 
# Паттерн программирования:
### Переменные

	1)Название переменных строго с маленькой буквы(искл. const переменные они все с большой буквы)
	прим. var type   или      const SPEED
	2)Название переменной должно отражать её функционал и используя реальные английский слова
	3)Если ваша переменная состоит из 2 и более слов соединяйте её с помощью _
	прим. var is_on_floor
	4)Обязательная типизация всех переменных
	прим const SPEED: float    или     @onready var object_scene: Node3d

### Объекты и сцены

	1)Если в вашей сцене, есть полноценный объект, который ввы хотите повторять,
	то создайте отдельную сцену для него
	2)Если вы понимаете, что ваш объект является классом чего-то более и понимаете,
	что такие свойства могут быть и у другого объекта, то создайте класс
	3)Если ваш объект должен отправлять какую-то логику другому объекту,
	то напишите для него signal
	прим. signal change_scene(to_scene)
	4)Если у вас ступор в логике или в понимании, что вам нужно сделать обратитесь ко мне

### Глобальная логика
	1)Прописывайте её в Global Scripts

# Использованные аддоны

	1) Phantom camera - инструмент для лучшего управления камерой и захвата нужных областей

	2) Sound manager - инструмент для работы с аудио, поддерживает очень много полезных функций

	3) GUI Auto Layout - инструмент для помощи в создании UI

	4) Simple ToDo - инструмент для написания задач

# Сам проект:
	Игра под названием ..... , это 2D приключение, в которой вам предстоит победить злодея собрав фотографии кошек
	сделан на godot 4.1.3
# Сюжет
	Вы просыпаетесь в логове главного злодея, который начинает проводить свой ретуал по уничтожению мира,
	сразу уничтожить мир у него не получилось, но он смог вытянуть все цвета с этого мира, вы решаетесь
	посмотреть на последок на фотографию вашего питомца, которая была у вас в кормане, оказалось,
	что цвета остались на фотографии, вы показываете это главному злодею, и он ослепляется от вида вашего питомца
	и случайно разбивает один из своих ретуальных сфер. Вот незадача, он просит вас подождать пока он не починит
	эту сферу и отворачивается чинить её, и вы решаетесь спасти мир, получив больше фотографий других питомцев
# Геймплей
	Цель игрока будет делать снимки котиков, и приносить их злодею, за каждые 4 снимка, будет ломаться ещё одна сфера,
	и вам будет открыта дорога на новую локацию(На локации по 6 котиков, то есть 2 котика можно пропустить,
	если вы их не можете найти). Каждый котик умеет разговаривать и вести беседы, некоторые котики вредные
	и не дадут вам просто так их сфоткать.
# Эстетическая часть
	Игра будет с видом сверху в чёрно-белом стиле(по сюжету), кроме самих котиков и интерактивных предметов,
	чтобы они были в контрасте со всей игрой. 
	Графика будет обычная 2D, кроме некоторых персонажей по сюжету.
# Локации
	0) Логово злодея 
	Мы появляемся здесь, тут игра начнётся и тут она и завершится, так же сюда надо будет заходить,
	чтобы получить билет на другую локацию.
	1) Город
	Обычный мегаполис с большими зданиями, подземными туннелями и гетто в подворотнях.
	![Локация городу](https://github.com/alkmanistik/GodotGameJam-1/other/Локация город.png)
	2) Научная лаборатория
	Научная станция, где работают котики учённые, тут будут и лаборатории и куча научных штук.
	![Локация лаборатория](https://github.com/alkmanistik/GodotGameJam-1/other/Локация лаборатория.png)
	3) Долина/лес
	Долина это локация с большим озером, огородом и с тротуаром и скамейками, чем-то похожа на парк.
	![Локация Парк](https://github.com/alkmanistik/GodotGameJam-1/other/Локация Парк.png)
# Коты
### Для локации Город
	1)Котопёс - образ из мультфильма, мы его будем видеть только, как собаку,
	потому что другая часть сидит в коробке, нужно будет дать кость(её мы получим от кота археолога),
	чтобы котопёс пошёл к ней и мы могли сфоткать часть с котом.
	2)Кот в маске - кот в маске другого животного, нужно будет поговорить с ним и сказать,
	что хеллоуин закончился, он снимет свою маску и отдаёт её вам
	3)Кот ниндзя - он будет нецветной и прятаться за колонной в подземке
	4)Длинный кот - это очень длинный кот, что он полностью огибает небоскрёб своим телом,
	нужно просто его сфоткать.
	5)Кот флаг - один котик подумал, что он флаг, он будет висеть в место флага и развиваться, как флаг.
	6)Кот репортёр - он будет стоять и фоткать всех, когда вы его попытаетесь сфоткать,
	он щёлкнет вспышкой в этот момент и будет белое пятно, чтобы его сфоткать,
	нужно позвонить ему на телефон, который будет на какой-то стене в городе.
### Для локации Научная лаборатория
	1)Кот Шрёдингера - кот в открытой коробке, но он будет виден, если вошли в научную лабораторию в нечётный раз.
	2)Нямкэт - в телескопе, смотря на звёзды, можно увидеть не только их, но и легендарного нямкэта.
	3)Кот гигачад - учёные создавали ген самого сильного кота, и они смогли создать из пробирки такого,
	он стоит за прозрачным стеклом в лаборатории.
	4)Кот amogus - в лаборатории стоит космонавт и рядом кнопка за голосование,
	нажмите её и скажите кого вы подозреваете, после того как вы кикнули, того там будет стоять котик с снятым шлемом.
	5)Кот программист - мем котик, который долбит по клавишам пианино, но тут он долбит по клавиатуре,
	надо выключить по проводу компьютер, чтобы он отдохнул и повернулся к вам.
	6)Кот учёный - кот учёный в маске, который хочет иследовать местные виды валерьянки(Её можно найти
	у кота с валерьянкой), принеся её он выйдет из лаборатории
### Для локации Долина/лес
	1)Пушистик - он такой пушистый, что его не сфотографировать,
	нужно будет найти расчёску и расчесать его
	2)Кот на озере - он ждёт, когда кто-то поймает рыбки,
	подойди к удачке и порыбачь и он придёт к тебе
	3)Кот в коробке - стоят рядом три коробки, и котик выпрыгивает из одной из них 
	и обратно нужно успеть поймать его
	4)Кот фермер - ему нужно помочь с чучелом, оно не такое страшное, нужно принести 
	ему маску(Её можно найти у кота в маске)
	5)Кот с валерьянкой - он спокойно спит на лавочке и рядом ляжит валерьянка
	6)Кот археолог - он занимается раскопками, подойдя к нему вы получите от него древнию кость подержать)
# UI
	В пользовательском интерфейсе, всё по легче, предметы подобранные вами будут слева, как статус.
	Прогресс локации будет справо снизу, в нём будет количество котов собранных
	 вами из количества всех на этой локации
	Главной фишкой интерфейса будет телефон, сверху на нём будет прогресс по всем кошкам собранных вами.
### Приложения телефона
	1) CatTaxi - приложения для перехода между локациями
	2) Телефон - приложения для набора номера телефона и возможность позвонить по нему
	3) Фотоаппарат - переключиться на возможность фотографировать объекты
	4) Фотогаллерея - приложение для просмотра всех снимков кошек
	5) Локатор(заблокированно до первого прохождения или до ввода чит кода) - приложения для отображение
	место положения всех кошек
	6) Настройки - приложения, чтобы выйти из игры или убавить звук, поменять язык
# Чит-коды
	Все чит-коды вводятся через приложение в телефон "набрать номер"
	1)Добавить 45 кошек, в свой прогресс код: 88224646
	2)Разблокировать локатор(приложение в телефоне) код: 911 or 112
# Концовки
	1)Нейтральная: завершить игру с 12 до 15 собранных кошек, главный злодей падает духом и
	говорит как он не был прав, и что может быть ему тоже следовало бы завести кошку
	2)Идеальная: завершить игру с 16 собранных кошек, главный злодей понимает, что уже всё кончено,
	но решает запустить ритуал, вы думаете, что всё потеряно, но на самом деле он призывает этих кошек сюда и хочет за ними заботиться
	3)Плохая: завершить игру с 50 собранных кошек в конце(Доступно только, если игрок пользовался чит-кодами),
	главный злодей не верит, что в мире так много милых созданий и решается уничтожить мир
