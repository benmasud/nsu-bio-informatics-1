# Визуализация структуры белка (Protein structure visualization)

- ПО - [PyMol (Software)](https://pymol.org/)
- Белок(protein) - [DEOXY HUMAN HEMOGLOBIN (PDB ID: 1A3N)](https://www.rcsb.org/structure/1A3N)

![Protein 1A3N](https://github.com/benmasud/nsu-bio-informatics-1/assets/69720999/716bbc7a-4f99-4503-a59d-cfd5bc64c784)


## Визуализация PyMOL для 1A3N
Визуализации включают в себя wireframe, backbone, spacefill, ribbons, и molecular surface representations. Кроме того, структура окрашена по доменам для облегчения анализа и понимания.

### Визуализации
**Получите структуру белка**
      <pre><code>fetch 1A3N</code></pre>

1. **Wireframe**
      - **Команда:** <code>show lines</code>
      - Отобразить структуру белка в каркасной модели, показывая все связи между атомами.

2. **Backbone**
      - **Команда:** <code>show cartoon</code>
      - Чтобы отобразить основу белка, подчеркнув вторичные структуры, такие как альфа-спирали и бета-листы.

3. **Spacefill**
      - **Команда:** <code>show spheres</code>
      - Для отображения белка с атомами, представленными в виде сфер, что дает более реалистичное изображение пространства, занимаемого белком.

4. **Ribbons**
      - **Команда:** <code>show ribbon</code>
      - Отображение структуры белка в виде ленты, подчеркивающей общую форму и структуру белка.

5. **Molecular Surface**
      - **Команда:** <code>show surface</code>
      - Для отображения молекулярной поверхности белка, показывая доступную площадь поверхности.

## Раскраска по доменам

Структура белка разделена на три домена, каждый из которых для ясности окрашен по-разному.

1. **Домен 1 (Остатки 1–100)**
      - **Команда выбора:** <code>select domain1, resi 1-100</code>
      - **Команда цвета:** <code>color firebrick, domain1</code>

2. **Домен 2 (Остатки 101–200)**
      - **Команда выбора:** <code>select domain2, resi 101-200</code>
      - **Команда цвета:** <code>color palecyan, domain2</code>

3. **Домен 3 (Остатки 201-256)**
      - **Команда выбора:** <code>select domain3, resi 201-256</code>
      - **Команда цвета:** <code>color green, domain3</code>

![Domain(1 to 3) 1A3N](https://github.com/benmasud/nsu-bio-informatics-1/assets/69720999/90111a43-dbb9-4554-8513-c407aa37717d)
