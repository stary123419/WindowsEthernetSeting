1. После установки загружаемся в ОС

2. cd .\Downloads\ - открываем PowerShell и переходим в папку Downloads

3. wget https://goo.su/fXSPre -o 111.zip - загружаем проект из GitHub

    1. Если получаем ошибку, то можно скачать через IE для этого в IE: нажимаем шестеренку - internet options - security - custom level - file download - enable
    2. При распаковке надо заменить C:\Users\Administrator\Downloads\WindowsEthernetSeting-main на C:\Users\Administrator\Downloads\111 это необходимо для корректной работы скрипта
4. Открываем папку Downloads в Windows Explorer

5. Заходим в архив и в файле README.txt копируем команду Set-MpPreference -DisableRealtimeMonitoring $false для отключения антивируса

6. Правой кнопкой по файлу 111.zip либо WindowsEthernetSeting, если загружали через браузер и выбираем Extract All и в открывшемся окне Extract

7. Заходим в файл IPadress.txt и изменяем ip gateway mask dns1 dns2 на свои

8. Открываем папку 111\ WindowsEthernetSetting-main и правой кнопкой мыши по файлу Предварительная настройка.ps1 выбираем Run with PowerShell

9. Нажимаем Win+R либо в поиске RUN вводим netplwiz или control userpasswords2 и в открывшемся окне убираем галку с пункта Users must enter name … и нажимаем Apply и вводим пароль, для того чтобы система загрузилась без ввода пароля и выполнился файл который мы добавили в автозагрузку

10. gpupdate /force - т.к. иногда настройки не применяются

11. Перезагружаем и убеждаемся что ОС загружается без ввода пароля, в windows server 2016 необходимо убрать галку Always ask before opening this file

12. Изменяем шаблон загрузки в selectel на Boot default

13. Подключаемся по RDP и запускаем скрипт 111\ WindowsEthernetSetting-main\Удаление из автозагрузки.ps1 правой кнопкой мыши выбираем Run with PowerShell

14. Set-MpPreference -DisableRealtimeMonitoring $false для включения антивируса

15. Нажимаем Win+R либо в поиске RUN вводим netplwiz или control userpasswords2 и в открывшемся окне устанавливаем галку в пункте Users must enter name …

16. Удаляем папки из Downloads и очищаем корзину

17. net user Administrator my_new_password - для изменения пароля вводим в PowerShell

 