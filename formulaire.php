<?php
include ('include/config.php');
   
//Import main selects
include ('php/mainSelect.php');

?>

<!DOCTYPE html>
<html>
<head>
    <title>Finelia</title>
    <link rel="stylesheet" href="css/formulaire.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <meta charset="UTF-8">
</head>

<?php include('include/header.php'); ?>
<body style="background-color: #e9ecef">
<main>

    <div class="jumbotron">

        <h1>Saisir des notes</h1>
        <hr class="my-4">


        <?php if (isset($_GET['error']) && $_GET['error'] == 'mark') { ?>
        <div class="alert alert-danger text-center" role="alert">
            Revoir la note saisie
        </div>

        <?php } else if (isset($_GET['add']) && $_GET['add'] == 'ok') { ?>
            <div class="alert alert-success text-center" role="alert">
                Note ajoutée !
            </div>


        <?php } ?>

        <div class="container-sm">

            <table class="table table-hover">
                <thead>
                    <th scope="col">Etudiant</th>
                    <th scope="col">Matière</th>
                    <th scope="col">Coef</th>
                    <th scope="col">Note</th>
                </thead>

                <tbody>

                    <tr>
                        <!-- Form to insert a mark -->
                        <form action="php/insertMark.php" method="POST">
                            <th>
                                <!-- Select student-->
                                <div class="form-group">
                                    <select class="input" name="idStudent" required>

                                        <option selected disabled value="">...</option>

                                        <?php foreach ($allStudents as $student) { ?>

                                            <option value="<?php echo  $student['idStudent']?>"><?php echo $student['firstName']." ".$student['lastName']; ?></option>

                                        <?php } ?>
                                    </select>
                                </div>
                            </th>
                            <th>
                                <!-- Select subject -->
                                <div class="form-group">
                                    <select class="input" name="idSubject" required>

                                        <option selected disabled value="">...</option>

                                        <?php foreach ($allSubjects as $subject) { ?>

                                            <option value="<?php echo  $subject['idSubject']?>"><?php echo $subject['title']; ?></option>

                                        <?php } ?>
                                    </select>
                                </div>
                            </th>
                            <th>
                                <!-- Select coefficient -->
                                <div class="form-group">
                                    <select class="input" name="coef" required>

                                        <?php for($i = 1; $i < 6; $i++){ ?>
                                            <option><?php echo $i?></option>
                                        <?php  }?>

                                    </select>
                                </div>
                            </th>
                            <th>
                                <!-- Enter mark -->
                                <input type="text" class="input" name="mark" placeholder="..." required>
                            </th>

                            <td>
                                <!-- Submit button -->
                                <input type="submit" name="insertMark" class="btn btn-outline-success" value="Ajouter !">
                            </td>

                        </form>
                    </tr>
                </tbody>
            </table>


        </div>
    </div>

</main>

<?php include('include/footer.php');?>
</body>

</html>