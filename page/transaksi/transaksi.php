<div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div align="center" class="panel-heading">
                             <h4>Data Transaksi Digital Library</h4>
                        </div>
                        <div class="panel-body">
                        	<a href="?page=transaksi&aksi=tambah" class="btn btn-primary" style="margin-bottom: 5px">Tambah Data</a>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Judul</th>
                                            <th>NIM</th>
                                            <th>Nama</th>
                                            <th>Tanggal Pinjam</th>
                                            <th>Tanggal Kembali</th>
                                            <th>Terlambat</th>
                                            <th>Status</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        $sql = $koneksi->query("select * from tb_transaksi where status='Pinjam'");

                                        while ($data=$sql->fetch_assoc()) {
                                            # code...


                                        ?> 

                                        <tr>
                                            <td><?php echo $no++; ?></td>
                                            <td><?php echo $data['judul'];?></td>
                                            <td><?php echo $data['nim'];?></td>
                                            <td><?php echo $data['nama'];?></td>
                                            <td><?php echo $data['tgl_pinjam'];?></td>
                                            <td><?php echo $data['tgl_kembali'];?></td>
                                            <td>
                                            	<?php 

		                                        $denda = 1000;

		                                        $tgl_dateline2 = $data['tgl_kembali'];
		                                        $tgl_kembali = date('Y-m-d');

		                                        $lambat = terlambat($tgl_dateline2, $tgl_kembali);
		                                        $denda1 = $lambat*$denda;

		                                        if ($lambat>0) {
		                                        	# code...
		                                        	echo "
		                                        	<font color='red'>$lambat hari<br>(Rp $denda1)</font>
		                                        	";
		                                        }else {
		                                        	echo $lambat ." Hari";
		                                        }
	                                        	?>
                                            </td>
                                            <td><?php echo $data['status'];?></td>

                                            <td>
                                                <a href="?page=transaksi&aksi=kembali&id=<?php echo $data['id']; ?>&judul=<?php echo $data['judul']; ?>" class="btn btn-info">Kembali</a>

                                                <a href="?page=transaksi&aksi=perpanjang&id=<?php echo $data['id']; ?>&judul=<?php echo $data['judul']?>&lambat=<?php echo $lambat ?>&tgl_kembali=<?php echo $data['tgl_kembali']?>" class="btn btn-danger">Perpanjang</a>
                                            </td>

                                        </tr>
                                        <?php }
                                        ?>
                                    </tbody>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
