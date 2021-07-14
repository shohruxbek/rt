<?php
include_once 'session.php';
        include 'tepa.php';
        require_once "config.php";
        require_once "helpers.php";
        $sql = "SELECT * FROM book";
        $result = mysqli_query($link, $sql);
        ?>
        <!--**********************************
            Nav header end
        ***********************************-->
		
		<!--**********************************
            Chat box start
        ***********************************-->
	
		<!--**********************************
            Chat box End
        ***********************************-->
		
		<!--**********************************
            Header start
        ***********************************-->
         <?php
        include 'header.php';
        ?>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
         <?php
        include 'menu.php';
        ?>
        <!--**********************************
            Sidebar end
        ***********************************-->
		
		<!--**********************************
            Content body start
        ***********************************-->
       <div class="content-body">
            <div class="container-fluid">
                <div class="page-titles">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Bosh menyu</a></li>
						<li class="breadcrumb-item active"><a href="javascript:void(0)">Kitoblar fondi</a></li>
					</ol>
                </div>
                <!-- row -->


                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Kitoblar fondi</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="1example" class="display min-w850">
                                        <thead>
                                            <tr>
                                                <th>#ID</th>
                                                <th>Kitob raqami</th>
                                                <th>Kitob nomi</th>
                                                <th>Kitob yili</th>
                                                <th>Qolgan kitoblar</th>
                                                <th>Talabalardagi soni</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
$i=1;
while($row = mysqli_fetch_array($result)){
    echo "<tr>";
    echo "<td>".$i."</td>";
    echo "<td>".$row['number']."</td>";
    echo "<td>".$row['name']."</td>";
    echo "<td>".$row['year']."</td>";
    echo "<td>".$row['total']."</td>";
    echo "<td>".$row['gettotal']."</td>";
    echo "</tr>";
    $i++;
}
                                            ?>
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                        <th>#ID</th>
                                                <th>Kitob raqami</th>
                                                <th>Kitob nomi</th>
                                                <th>Kitob yili</th>
                                                <th>Qolgan kitoblar</th>
                                                <th>Talabalardagi soni</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
            </div>
        </div>
        <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.print.min.js"></script>

    <script type="text/javascript">
        $('#1example').DataTable({
            dom: 'Bfrtip',
            buttons: [
            { extend: 'csv', className: 'btn btn-primary' },
            { extend: 'excel', className: 'btn btn-primary' },
            { extend: 'pdf', className: 'btn btn-primary' },
            { extend: 'print', className: 'btn btn-primary' }
            ],
            "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]]
        });
    </script>
         <?php
        include 'footer.php';
        ?>