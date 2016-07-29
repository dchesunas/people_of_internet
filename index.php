<?php
/**
 * Created by PhpStorm.
 * User: Администратор
 * Date: 22.07.2016
 * Time: 14:21
 */

require_once "header.php";
echo "<div class='preloader'><img src='images/preloader.gif'></div>";
echo "<div class='insert-here'>";


echo '<script>$(".insert-here").load("generate_top.php", function() {
                    });</script>';

echo "</div>";




require_once "footer.php";


