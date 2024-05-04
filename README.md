# Изучение представленности генов в таксонах (Study of gene representation in taxa)
![image](https://github.com/benmasud/nsu-bio-informatics-1/assets/69720999/fc6f04b2-4c92-4755-bd19-8d1e7bb044c4)

## Ответы на разминочные вопросы
1. Какой ближайший таксон объединяет:
   - человека и мышь - Эуархонтоглиры
   - человека и бабочку - Nephrozoa (двусторонне-симметричные)
   - человека и дрожжи - Opisthokonta (Заднежгутиковые)
   - человека и капусту - Эукариоты
2. Согласно схеме [tolweb.org](http://tolweb.org/Eukaryotes/3), какой из организмов является ближайшим к человеку, а какой самым удаленным от человека:
   - ламинария сахаристая - самая удалённая
   - дизентерийная амеба - ближайшая

## Выбранный ген: Glyceraldehyde-3-phosphate dehydrogenase
Glyceraldehyde-3-phosphate dehydrogenase, often simply called GAPDH, is a vital enzyme with a starring role in energy production. It sits at the heart of glycolysis, the process by which cells break down glucose for energy. GAPDH acts as a key catalyst, converting a specific molecule within this pathway. But its significance extends beyond its primary function. GAPDH is a highly conserved enzyme, meaning its structure and function remain remarkably similar across diverse organisms, from bacteria to humans. This characteristic makes it an ideal candidate for finding homologous genes in various species using NCBI BLAST. Interestingly, GAPDH also exhibits intriguing "moonlighting" abilities, participating in other cellular processes like gene activation and even programmed cell death, suggesting a more complex and multifaceted role than initially recognized.

<br>
Глицеральдегид-3-фосфатдегидрогеназа, часто называемая просто ГАФД, является жизненно важным ферментом, играющим главную роль в производстве энергии. Он лежит в основе гликолиза — процесса, в ходе которого клетки расщепляют глюкозу для получения энергии. ГАФД действует как ключевой катализатор, превращая определенную молекулу в этом пути. Но его значение выходит за рамки его основной функции. GAPDH — высококонсервативный фермент, а это означает, что его структура и функции остаются удивительно схожими у разных организмов, от бактерий до человека. Эта характеристика делает его идеальным кандидатом для поиска гомологичных генов у различных видов с помощью NCBI BLAST. Интересно, что GAPDH также демонстрирует интригующие способности «подрабатывать», участвуя в других клеточных процессах, таких как активация генов и даже запрограммированная смерть клеток, что предполагает более сложную и многогранную роль, чем предполагалось первоначально.


## Параметры BLAST, использованные для поиска гомологичных генов
`Megablast nr/nt exclude artificial sequences`. Поиск был в 2 прохода - исключая приматов (до момента, пока ничего больше не находилось) и включая приматов.
(Достаточно много времени ушло на поиск гена, который смог обработаться бластом и в котором были не только приматы. К сожалению не млекопитающих там не оказалось)

## Таблица с названиями полученных гомологических генов (Gene Symbol), систематических названий видов и русских названий видов

<table>
  <thead>
    <tr>
      <th>Gene symbol</th>
      <th>Scientific name</th>
      <th>English Name</th>
      <th>Russian Name</th>
      <th>Query Cover</th>
      <th>Total Score</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>GAPDH</td>
      <td>Mandrillus leucophaeus </td>
      <td>Drill</td>
      <td>Дрил </td>
      <td>60%</td>
      <td>3628</td>
    </tr>
    <tr>
      <td>GAPDH</td>
      <td>Pan paniscus</td>
      <td>Bonobo </td>
      <td>Боно́бо</td>
      <td>36%</td>
      <td>2614</td>
    </tr>
    <tr>
       <td>GAPDH</td>
       <td>Rhinopithecus roxellana </td>
      <td>Golden snub-nosed monkey</td>
      <td>Золотистая курносая обезьяна</td>
      <td>32%</td>
      <td>2158</td>
    </tr>
    <tr>
       <td>GAPDH</td>
       <td>Trachypithecus francoisi </td>
      <td>Francois’ leaf monkey</td>
      <td>Листовая обезьяна Франсуа</td>
      <td>32%</td>
      <td>2205</td>
    </tr>
    <tr>
       <td>GAPDH</td>
      <td>Pongo pygmaeus</td>
      <td>Bornean orangutan</td>
      <td>Калиманта́нский орангута́н</td>
      <td>32%</td>
      <td>2272</td>
    </tr>
    <tr>
       <td>GAPDH</td>
      <td>Macaca fascicularis </td>
      <td>Crab-eating macaque</td>
      <td>Макак-крабоед</td>
      <td>34%</td>
      <td>2258</td>
    </tr>
    <tr>
       <td>GAPDH</td>
      <td>Chlorocebus sabaeus </td>
      <td>Green monkey</td>
      <td>Зелёная мартышка</td>
      <td>32%</td>
      <td>2187</td>
    </tr>
    <tr>
      <td>cDNA DKFZp468E2417 </td>
      <td>Pongo abelii  </td>
      <td>Sumatran orangutan</td>
      <td>Суматра́нский орангута́н </td>
      <td>32%</td>
      <td>2266</td>
    </tr>
    <tr>
      <td>GAPDH</td>
      <td>Symphalangus syndactylus </td>
      <td>Siamang</td>
      <td>Сиама́нг </td>
      <td>32%</td>
      <td>2273</td>
    </tr>
    <tr>
      <td>GAPDH</td>
      <td>Macaca thibetana thibetana </td>
      <td>Tibetan macaque</td>
      <td>тибе́тский мака́к</td>
      <td>34%</td>
      <td>2252</td>
    </tr>
  </tbody>
</table>

## Краткий анализ консервативности полученного выравнивания в произвольной форме
Существуют довольно большие различия из-за значительных различий в длине некоторых последовательностей (~ до 900 строк). Однако в соответствующих разделах сохраняется не столь высокий консерватизм, и можно с уверенностью сказать, что последовательность гомологична.
## Полученное название объединяющего таксона на латыни и на русском и краткое описание таксона в произвольной форме
Объединяющий таксон - Boreoeutheria (Бореоэуте́рии) - происхождение в переводе с греческого - "Северный зверь".
