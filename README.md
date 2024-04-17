# Изучение сходства ортологичных последовательностей генов у разных организмов (Study of the similarity of orthologous gene sequences in different organisms)
![image](https://github.com/benmasud/nsu-bio-informatics-1/assets/69720999/800369aa-9c3b-4bd4-8293-f0ee36761a3c)

Я выбрал фенотип <strong>дефицита `D-бифункционального белка` `D-bifunctional protein deficiency DBP` </strong>, вот его краткое описание.
<br>
<p>Фенотип <strong>дефицита D-бифункционального белка (ДБФ) </strong> характеризуется нарушением пероксисомального бета-окисления жирных кислот. Этот недостаток проявляется в трех основных подтипах:</p>
<ul>
    <li><strong>Тип I:</strong> дефицит как 2-еноил-КоА-гидратазы, так и 3-гидроксиацил-КоА-дегидрогеназы.</li>
    <li><strong>Тип II:</strong> дефицит только активности гидратазы.</li>
    <li><strong>Тип III:</strong> дефицит только активности дегидрогеназы.</li>
</ul>
Общие клинические особенности включают младенческую гипотонию, судороги и аномальные черты лица. У большинства пациентов с любым из этих подтипов наблюдается тяжелый фенотип, который обычно приводит к смерти в возрасте до двух лет. Однако был предложен более мягкий фенотип - дефицит типа IV, напоминающий синдром Перро, который может быть недостаточно диагностирован. Сам синдром Перро характеризуется нейросенсорной тугоухостью как у мужчин, так и у женщин, а также дисфункцией яичников у женщин.
<br>
Common clinical features include infantile hypotonia, seizures, and abnormal facial features. Most patients with any of these subtypes have a severe phenotype that usually results in death before the age of two years. However, a milder phenotype, type IV deficiency, resembling Perrault syndrome, has been proposed and may be underdiagnosed. Perrault syndrome itself is characterized by sensorineural hearing loss in both men and women, as well as ovarian dysfunction in women.

<br>

Я обнаружил два человеческих гена, связанных с дефицитом D-бифункционального белка (дефицит ДАД):
<ul>
    <li>
        <strong>HSD17B4 Gene - Human (Homo sapiens)</strong>
        <ul>
            <li>Gene ID: 3295</li>
            <li><a href="https://www.ncbi.nlm.nih.gov/gene?Db=gene&Cmd=DetailsSearch&Term=3295">Link</a></li>
        </ul>
    </li>
    <li>
        <strong>HSD17B4 Gene - Model Organism (Mouse - Mus musculus)</strong>
        <ul>
            <li>Gene ID: 17681</li>
            <li><a href="https://www.ncbi.nlm.nih.gov/gene?Db=gene&Cmd=DetailsSearch&Term=17681">Link</a></li>
        </ul>
    </li>
    <li>
        <strong>ACOX1 Gene - Human (Homo sapiens)</strong>
        <ul>
            <li>Gene ID: 51</li>
            <li><a href="https://www.ncbi.nlm.nih.gov/gene?Db=gene&Cmd=DetailsSearch&Term=51">Link</a></li>
        </ul>
    </li>
    <li>
        <strong>ACOX1 Gene - Model Organism (Mouse - Mus musculus)</strong>
        <ul>
            <li>Gene ID: 11430</li>
            <li><a href="https://www.ncbi.nlm.nih.gov/gene?Db=gene&Cmd=DetailsSearch&Term=11430">Link</a></li>
        </ul>
    </li>
</ul>


## Оценка и сравнение

### Выравнивание генов ACOX1

- needle : 43,4% идентичности, 44,8% пропусков, оценка: 10403,0.
- water: 43,9% идентичности, 44,1% пробелов, Оценка: 10407,0.

Оба мировоззрения сопоставимы, причем у water немного более высокий балл.

### Выравнивание генов HSD17B4

- needle: идентичность 15,1%, пробелы 80,8%, оценка: 2368,0.
- water: 36,1% идентичности, 54,0% пробелов, Оценка: 2370,0

Согласование water с HSD17B4 показывает лучшие характеристики, что указывает на ее превосходство.

### Заключение

- Для ACOX1 возможен любой вариант расклада, но небольшое преимущество water в счете делает его предпочтительным.
- Выравнивание water для HSD17B4 значительно лучше из-за меньшего количества пробелов, более высокой идентичности и оценки.

Таким образом, выравнивание water предпочтительнее для обоих генов, поскольку оно показывает лучшее качество и релевантность. Однако дальнейший анализ с учетом консервативных функциональных областей может обеспечить дополнительную проверку.
