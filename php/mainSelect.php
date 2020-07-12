<?php

//Select all students
$querySelectStudents = $pdo->prepare('SELECT * FROM student');
$querySelectStudents->execute();

$allStudents = $querySelectStudents->fetchAll();

//Select all subjects
$querySelectSubjects = $pdo->prepare('SELECT * FROM subject');
$querySelectSubjects->execute();

$allSubjects = $querySelectSubjects->fetchAll();

// 2 global variables to show average
global $finaMarks;
global $allCoef;

?>