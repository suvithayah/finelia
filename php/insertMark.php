<?php

include ('../include/config.php');

if(isset($_POST['insertMark'])){

    $student = $_POST['idStudent'];
    $subject = $_POST['idSubject'];
    $coef = $_POST['coef'];
    $mark = htmlspecialchars($_POST['mark']);


    if($mark >= 20 || $mark < 0 || preg_match('#[a-zA-z]#',$mark)){
        header('location: ../formulaire.php?error=mark');
        exit;
    }

    $insertMarkQuery = $pdo->prepare('INSERT INTO mark (mark, coefficient, student, subject) VALUES (:mark, :coef, :student, :subject)');

    $insertMarkQuery->execute(array(
        'mark' => $mark,
        'coef' => $coef,
        'student' => $student,
        'subject' => $subject
    ));

    header('Location: ../formulaire.php?add=ok');
    exit;

}

?>