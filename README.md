# **Предсказание и парное выравнивание структур белков (Protein Structure Prediction and Alignment)**

**Используемая последовательность белка (Protein Sequence Used)**
```MKGMLTGPVTILNWSWPREDITHEEQTKQLALAIRDEVLDLEAAGIKIIQIDEAALREKLPLRKSDWHAKYLDWAIPAFRLVHSAVKPTTQIHTHMCYSE```

<br>
## **Рабочий процесс**

### 1. **Прогнозирование структуры**
- **Tools**: 
  - [ESMFold](https://esmatlas.com/) (via Google Colab)
  - [AlphaFold 2](https://alphafold.ebi.ac.uk/) (via Google Colab)

- Последовательность была введена в блокноты ESMFold и AlphaFold 2 для генерации третичных структур в **формате PDB**.

### 2. **Structural Alignment**
- **Tool**: [RCSB 3D View](https://www.rcsb.org/3d-view/)
  - Структуры были загружены в RCSB 3D View для попарного структурного выравнивания.

### 3. **Визуализация**
- Визуализированные выровненные структуры с использованием **RCSB 3D View** с цепями, окрашенными для ясности:
- Цепь A: **Зеленый**
- Цепь B: **Красный**

![img_1](https://github.com/user-attachments/assets/b2311282-68d4-48c0-a027-162165d3cb91)



---

## **Используемые инструменты**

1. **ESMFold**: Быстрый инструмент прогнозирования структуры белка с использованием глубокого обучения.
2. **AlphaFold 2**: Высокоточный инструмент прогнозирования структуры белка.
3. **RCSB 3D View**: Веб-инструмент для визуализации и выравнивания структуры белка.


## **Выводы**
В этом исследовании сравнивались структурные предсказания последовательности белка с использованием ESMFold и AlphaFold 2.
Хотя первоначальный вид предсказаний казался разным, выравнивание выявило значительное сходство между двумя моделями, особенно в определенных областях. Это указывает на то, что предсказания довольно похожи, несмотря на незначительные различия.
С продолжающимся быстрым прогрессом в области искусственного интеллекта и методов машинного обучения ожидается, что будущие предсказания станут еще более точными, что еще больше повысит нашу способность понимать и моделировать молекулярные структуры с высокой точностью.
