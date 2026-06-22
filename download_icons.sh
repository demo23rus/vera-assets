#!/usr/bin/env bash
# Скачивает реальные иконы с Wikimedia Commons
# Все изображения в открытом доступе (Public Domain / CC)

set -euo pipefail

ASSET_DIR="/root/vera_channel_assets"
mkdir -p "$ASSET_DIR"

echo "Скачиваем иконы с Wikimedia Commons..."

# Функция скачивания с проверкой
download() {
  local url="$1"
  local file="$2"
  echo "  → $file"
  wget -q --timeout=30 --tries=3 -O "$ASSET_DIR/$file" "$url" || echo "  ⚠ Не удалось скачать $file"
}

# ── MORNING (утренние) ─────────────────────────────────────────────
# Богородица Казанская
download "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Kazan_icon.jpg/800px-Kazan_icon.jpg" "morning_01.png"
# Богородица Владимирская
download "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Vladimirskaya.jpg/600px-Vladimirskaya.jpg" "morning_02.png"
# Спас Нерукотворный
download "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Simon_Ushakov_-_Image_Not_Made_by_Hand.jpg/700px-Simon_Ushakov_-_Image_Not_Made_by_Hand.jpg" "morning_03.png"
# Троица Андрея Рублёва
download "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Angelsatmamre-trinity-rublev-1410.jpg/600px-Angelsatmamre-trinity-rublev-1410.jpg" "morning_04.png"
# Богородица Тихвинская
download "https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Tihvinskaya.jpg/600px-Tihvinskaya.jpg" "morning_05.png"
# Спаситель (Пантократор)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Spas_vsederzhitel_sinay.jpg/600px-Spas_vsederzhitel_sinay.jpg" "morning_06.png"
# Богородица Смоленская
download "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Smolenskaya_theotokos.jpg/600px-Smolenskaya_theotokos.jpg" "morning_07.png"
# Богородица Донская
download "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Donskaya_Feofan.jpg/600px-Donskaya_Feofan.jpg" "morning_08.png"
# Нерукотворный образ (Новгород)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/The_Mandylion_of_Edessa.jpg/600px-The_Mandylion_of_Edessa.jpg" "morning_09.png"
# Богородица Знамение
download "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Our_Lady_of_the_Sign.jpg/600px-Our_Lady_of_the_Sign.jpg" "morning_10.png"

# ── EVENING (вечерние) ────────────────────────────────────────────
# Богородица с Младенцем (фреска)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Madonna_della_Clemenza.jpg/600px-Madonna_della_Clemenza.jpg" "evening_01.png"
# Иисус Христос (мозаика Айя-София)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Christ_Pantocrator_Deesis_mosaic_Hagia_Sophia.jpg/700px-Christ_Pantocrator_Deesis_mosaic_Hagia_Sophia.jpg" "evening_02.png"
# Богородица Одигитрия
download "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Hodegetria_Fresk.jpg/600px-Hodegetria_Fresk.jpg" "evening_03.png"
# Спас в силах
download "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Spas_v_silakh_Rublev.jpg/600px-Spas_v_silakh_Rublev.jpg" "evening_04.png"
# Богородица Умиление
download "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Umilenie_theotokos.jpg/600px-Umilenie_theotokos.jpg" "evening_05.png"
# Деисус (Рублёв)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Zvenigorod_deesis_row-center.jpg/700px-Zvenigorod_deesis_row-center.jpg" "evening_06.png"
# Богородица Иверская
download "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Iverskaya_Mother_of_God.jpg/600px-Iverskaya_Mother_of_God.jpg" "evening_07.png"
# Спаситель (Рублёв, Звенигород)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Zvenigorod_Spas.jpg/600px-Zvenigorod_Spas.jpg" "evening_08.png"
# Богородица Феодоровская
download "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Feodorovskaya.jpg/600px-Feodorovskaya.jpg" "evening_09.png"
# Господь Вседержитель (Новгород)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Pantokrator_Sinai_wiki.jpg/600px-Pantokrator_Sinai_wiki.jpg" "evening_10.png"

# ── SAINT (святые) ───────────────────────────────────────────────
# Николай Чудотворец
download "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Nicholas_of_Myra.jpg/600px-Nicholas_of_Myra.jpg" "saint_01.png"
# Сергий Радонежский
download "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Sergius_of_Radonezh_-_Tretyakov_gallery.jpg/600px-Sergius_of_Radonezh_-_Tretyakov_gallery.jpg" "saint_02.png"
# Георгий Победоносец
download "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Saint_George_Novgorod_Icon.jpg/600px-Saint_George_Novgorod_Icon.jpg" "saint_03.png"
# Архангел Михаил
download "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Archangel_Michael_icon.jpg/600px-Archangel_Michael_icon.jpg" "saint_04.png"
# Иоанн Предтеча
download "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/John_the_Baptist_icon.jpg/600px-John_the_Baptist_icon.jpg" "saint_05.png"
# Апостол Пётр
download "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/St._Peter_Icon.jpg/600px-St._Peter_Icon.jpg" "saint_06.png"
# Серафим Саровский
download "https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Seraphim_Sarovsky.jpg/600px-Seraphim_Sarovsky.jpg" "saint_07.png"
# Богородица с Николаем и Климентом (Липпи)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Fra_Filippo_Lippi_-_Madonna_and_Child_Enthroned_with_Saints.jpg/600px-Fra_Filippo_Lippi_-_Madonna_and_Child_Enthroned_with_Saints.jpg" "saint_08.png"
# Димитрий Солунский
download "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Demetrius_of_Thessaloniki.jpg/600px-Demetrius_of_Thessaloniki.jpg" "saint_09.png"
# Пантелеимон Целитель
download "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Panteleimon_icon.jpg/600px-Panteleimon_icon.jpg" "saint_10.png"
# Архангел Гавриил
download "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Archangel_Gabriel_icon.jpg/600px-Archangel_Gabriel_icon.jpg" "saint_11.png"
# Иоанн Богослов
download "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/John_Theologian_icon.jpg/600px-John_Theologian_icon.jpg" "saint_12.png"

# ── PRAYER (молитвы) ─────────────────────────────────────────────
# Троица (Рублёв) — полная
download "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Angelsatmamre-trinity-rublev-1410.jpg/700px-Angelsatmamre-trinity-rublev-1410.jpg" "prayer_01.png"
# Богородица Оранта
download "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Oranta.jpg/600px-Oranta.jpg" "prayer_02.png"
# Спаситель (мозаика)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Christ_Pantocrator_Deesis_mosaic_Hagia_Sophia.jpg/600px-Christ_Pantocrator_Deesis_mosaic_Hagia_Sophia.jpg" "prayer_03.png"
# Покров Богородицы
download "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Pokrov-Theotokos.jpg/600px-Pokrov-Theotokos.jpg" "prayer_04.png"
# Богородица Казанская (крупно)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Kazan_icon.jpg/700px-Kazan_icon.jpg" "prayer_05.png"
# Деисус (мозаика Айя-София)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Deisis_mosaic_Hagia_Sophia.jpg/700px-Deisis_mosaic_Hagia_Sophia.jpg" "prayer_06.png"
# Богородица Владимирская (крупно)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Vladimirskaya.jpg/700px-Vladimirskaya.jpg" "prayer_07.png"
# Иисус Христос Пантократор (Синай)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Spas_vsederzhitel_sinay.jpg/700px-Spas_vsederzhitel_sinay.jpg" "prayer_08.png"
# Богородица с Младенцем (Рублёв)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Madonna_della_Clemenza.jpg/700px-Madonna_della_Clemenza.jpg" "prayer_09.png"
# Богородица Иверская (крупно)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Iverskaya_Mother_of_God.jpg/700px-Iverskaya_Mother_of_God.jpg" "prayer_10.png"

# ── CONFESSION (исповедь) ────────────────────────────────────────
# Блудный сын (Рембрандт)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Rembrandt_Harmensz._van_Rijn_-_Return_of_the_Prodigal_Son_-_Google_Art_Project.jpg/600px-Rembrandt_Harmensz._van_Rijn_-_Return_of_the_Prodigal_Son_-_Google_Art_Project.jpg" "confession_01.png"
# Богородица Всех скорбящих Радость
download "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Joy_of_All_Who_Sorrow.jpg/600px-Joy_of_All_Who_Sorrow.jpg" "confession_02.png"
# Христос в Гефсиманском саду
download "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Carl_Heinrich_Bloch_-_In_a_Garden_gethsemane.jpg/600px-Carl_Heinrich_Bloch_-_In_a_Garden_gethsemane.jpg" "confession_03.png"
# Богородица Умиление (Серафимо-Дивеевская)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Umilenie_theotokos.jpg/700px-Umilenie_theotokos.jpg" "confession_04.png"
# Распятие (икона)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Crucifixion_icon_Sinai_12th_century.jpg/600px-Crucifixion_icon_Sinai_12th_century.jpg" "confession_05.png"
# Христос Вседержитель (Синай)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Spas_vsederzhitel_sinay.jpg/600px-Spas_vsederzhitel_sinay.jpg" "confession_06.png"

# ── GOSPEL (евангелие/слово) ─────────────────────────────────────
# Евангелист Иоанн
download "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/John_Theologian_icon.jpg/600px-John_Theologian_icon.jpg" "gospel_01.png"
# Евангелист Лука
download "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Luke_icon.jpg/600px-Luke_icon.jpg" "gospel_02.png"
# Спас Нерукотворный (крупно)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Simon_Ushakov_-_Image_Not_Made_by_Hand.jpg/700px-Simon_Ushakov_-_Image_Not_Made_by_Hand.jpg" "gospel_03.png"
# Преображение Господне
download "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Transfiguration_by_Feofan_Grek.jpg/600px-Transfiguration_by_Feofan_Grek.jpg" "gospel_04.png"
# Воскресение Христово
download "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Resurrection_icon.jpg/600px-Resurrection_icon.jpg" "gospel_05.png"
# Вход в Иерусалим
download "https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Entry_into_Jerusalem_icon.jpg/600px-Entry_into_Jerusalem_icon.jpg" "gospel_06.png"
# Рождество Христово (икона)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Nativity_icon.jpg/600px-Nativity_icon.jpg" "gospel_07.png"
# Крещение Господне
download "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Baptism_of_Christ_icon.jpg/600px-Baptism_of_Christ_icon.jpg" "gospel_08.png"

# ── SUPPORT (поддержка) ──────────────────────────────────────────
# Богородица Всех скорбящих (крупно)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Joy_of_All_Who_Sorrow.jpg/700px-Joy_of_All_Who_Sorrow.jpg" "support_01.png"
# Богородица Казанская
download "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Kazan_icon.jpg/600px-Kazan_icon.jpg" "support_02.png"
# Христос (мозаика, добрый пастырь)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Christ_Pantocrator_Deesis_mosaic_Hagia_Sophia.jpg/700px-Christ_Pantocrator_Deesis_mosaic_Hagia_Sophia.jpg" "support_03.png"
# Богородица Умиление
download "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Umilenie_theotokos.jpg/600px-Umilenie_theotokos.jpg" "support_04.png"
# Серафим Саровский
download "https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Seraphim_Sarovsky.jpg/700px-Seraphim_Sarovsky.jpg" "support_05.png"
# Троица (Рублёв)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Angelsatmamre-trinity-rublev-1410.jpg/600px-Angelsatmamre-trinity-rublev-1410.jpg" "support_06.png"
# Богородица Владимирская
download "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Vladimirskaya.jpg/700px-Vladimirskaya.jpg" "support_07.png"
# Богородица Иверская
download "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Iverskaya_Mother_of_God.jpg/600px-Iverskaya_Mother_of_God.jpg" "support_08.png"
# Покров Богородицы
download "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Pokrov-Theotokos.jpg/700px-Pokrov-Theotokos.jpg" "support_09.png"
# Николай Чудотворец
download "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Nicholas_of_Myra.jpg/700px-Nicholas_of_Myra.jpg" "support_10.png"

# ── LIBRARY (библиотека) ─────────────────────────────────────────
# Евангелист Матфей
download "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Matthew_icon.jpg/600px-Matthew_icon.jpg" "library_01.png"
# Евангелист Марк
download "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Mark_icon.jpg/600px-Mark_icon.jpg" "library_02.png"
# Евангелист Иоанн (крупно)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/John_Theologian_icon.jpg/700px-John_Theologian_icon.jpg" "library_03.png"
# Спас Вседержитель
download "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Spas_vsederzhitel_sinay.jpg/700px-Spas_vsederzhitel_sinay.jpg" "library_04.png"
# Преображение (Феофан Грек)
download "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Transfiguration_by_Feofan_Grek.jpg/700px-Transfiguration_by_Feofan_Grek.jpg" "library_05.png"
# Троица (Рублёв) — для библиотеки
download "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Angelsatmamre-trinity-rublev-1410.jpg/700px-Angelsatmamre-trinity-rublev-1410.jpg" "library_06.png"

echo ""
echo "Готово. Скачанных файлов:"
find "$ASSET_DIR" -maxdepth 1 -name "*.png" | wc -l
echo "Размер папки:"
du -sh "$ASSET_DIR"
