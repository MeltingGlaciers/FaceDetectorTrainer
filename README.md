# FaceDetectorTrainer

### trainer.m
Скрипт для тренировки нейронки CascadeObjectDetector

### myGrayFunc.m
Из-за того, что для ложных детекций брались самые разные датасеты (в том числе и rgb), нужно было их все обесцветить.

### flipImgs.m
Из-за недостатка изображений "не-лиц" нужно было увеличить искусственно датасет. Просто отражает все файлы по горизонтали.

### test.m
Проверка обученности на примере одного изображения и вывода результата работы

### test_output.m
То же, что и test.m, только выводит таблицу всех изображений с колличеством детекций и сохраняет в .xlxs

### Варианты обученных нейронок
megaDetector.xml, megaDetector2.xml - обучались с использованием HOG, пока я скачивал побольше ложных датасетов (Среднее время тренировки: 1 час)  
goodOne.xml - обучался на 24к ложных картинках с использованием LBP (Общее время тренировки: 2 часа)