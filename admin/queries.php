<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <?php include 'includes/navbar.php'; ?>
  <?php include 'includes/menubar.php'; ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Queries
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Queries</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    <div class="row">
        <div class="col-xs-12">
          <div class="box">
<div class="box-body">
    <table id="example1" class="table table-bordered">
    <thead>
        <th>Name</th>
        <th>Date</th>
        <th>Email</th>
        <th>Contact</th>
        <th>Description</th>
    </thead>
    <tbody>
        <?php
        $conn = $pdo->open();

        try{
            $stmt = $conn->prepare("SELECT * FROM testimonials");
            $stmt->execute();
            foreach($stmt as $row){
            echo "
                <tr>
                <td>".$row['name']."</td>
                <td>".$row['date']."</td>
                <td>".$row['email']."</td>
                <td>".$row['contactno']."</td>
                <td>".$row['description']."</td>
                </tr>
            ";
            }
        }
        catch(PDOException $e){
            echo $e->getMessage();
        }

        $pdo->close();
        ?>
    </tbody>
    </table>
</div>
    </div>
    </div>
        </div>
      </div>
    <?php include 'includes/footer.php'; ?>
    <?php include 'includes/scripts.php'; ?>
      </body>
      </html>