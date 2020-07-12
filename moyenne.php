<?php
include ('include/config.php');

//Import main selects
include ('php/mainSelect.php');
?>

<!DOCTYPE html>
<html>
<head>
    <title>Finelia</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <meta charset="UTF-8">
</head>

<?php include('include/header.php'); ?>
<body style="background-color: #e9ecef">
<main>

    <div class="jumbotron">

        <h1>Les moyennes de la classe</h1>
        <hr class="my-4">

        <div class="container-sm">


            <table class="table table-bordered table-hover">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Etudiant </th>
                    <th scope="col">Matière </th>
                    <th scope="col">Moyenne </th>
                </tr>
                </thead>

                <tbody>

                <!-- go through all students-->
                <?php foreach ($allStudents as $student) { ?>
                    <tr>
                        <th scope="row">
                            <p><?php echo $student['firstName']. " ". $student['lastName']; ?></p>
                        </th>
                    </tr>

                    <!-- go through each subject-->
                    <?php  foreach ($allSubjects as $subject){

                        //reset global variables to 0
                        $finalMarks=0 ;
                        $allCoef=0;

                        // select all marks of the current student and subject
                        $querySelectMark = $pdo->prepare('SELECT * FROM mark WHERE mark.student = ? AND subject = ?');
                        $querySelectMark->execute([$student['idStudent'], $subject['idSubject']]);

                        $marks = $querySelectMark->fetchAll();

                        ?>

                        <tr>
                            <td></td>

                            <td>
                                <p><?php echo $subject['title']; ?></p>
                            </td>
                            <td>
                                <p>
                                    <?php


                                    //Foreach marks
                                    foreach ($marks as $mark){

                                        //This function allows to calculate the average of the subject, with multiple marks

                                        for($i = 0; $i < sizeof($marks); $i++) {

                                            if($marks[$i]['student'] === $student['idStudent']) {

                                                $finalMarks += $marks[$i]['mark']*$marks[$i]['coefficient'];
                                                $allCoef += $marks[$i]['coefficient'];

                                            }
                                        }
                                    }

                                    //If the current mark maches to the current student and subject then show the average
                                    if ($mark['student'] === $student['idStudent'] && $mark['subject'] === $subject['idSubject']){
                                        echo number_format($finalMarks/$allCoef,2);;
                                    }else{
                                        echo "-";
                                    }
                                    ?>
                                </p>
                            </td>

                        </tr>
                    <?php }}  ?>
                </tbody>
            </table>

        </div>
    </div>

</main>

<?php include('include/footer.php');?>
</body>

</html>