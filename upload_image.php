<?php
/**
 * Created by PhpStorm.
 * User: Администратор
 * Date: 24.07.2016
 * Time: 12:32
 */



function uploadImage($name,$file){
$uploaddir = 'images/avatars/';
// это папка, в которую будет загружаться картинка
$apend=$name.'.jpg';
// это имя, которое будет присвоенно изображению
$uploadfile = "$uploaddir$apend";
//в переменную $uploadfile будет входить папка и имя изображения
if(file_exists($uploadfile)){
    unlink($uploadfile);
}
// В данной строке самое важное - проверяем загружается ли изображение (а может вредоносный код?)
// И проходит ли изображение по весу. В нашем случае до 512 Кб
if(($file['type'] == 'image/gif' || $file['type'] == 'image/jpeg' || $file['type'] == 'image/png' || $file['type'] == 'image/jpg') && ($file['size'] != 0 and $file['size']<=5120000))
{
// Указываем максимальный вес загружаемого файла. Сейчас до 5 мб
    if (move_uploaded_file($file['tmp_name'], $uploadfile))
    {
        //Здесь идет процесс загрузки изображения
        $size = getimagesize($uploadfile);
        // с помощью этой функции мы можем получить размер пикселей изображения
        if ($size[0] < 1500 && $size[1]<2500)
        {
            // если размер изображения не более 500 пикселей по ширине и не более 1500 по  высоте
            return $uploadfile;
        } else {
            unlink($uploadfile);
            // удаление файла
            return;
        }
    } else {
        return;
    }
} else {
    return;
}
}
?>