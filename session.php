<?
session_start();
    if(!isset($_SESSION["login"]) and !isset($_SESSION["name"])) {
        header("Location: login.php");
        exit();
    }
?>