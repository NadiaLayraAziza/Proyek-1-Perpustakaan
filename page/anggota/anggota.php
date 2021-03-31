<div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div align="center" class="panel-heading">
                             <h4>Data Anggota Digital Library</h4>
                        </div>
                        <div class="panel-body">
                        	<a href="?page=anggota&aksi=tambah" class="btn btn-primary" style="margin-bottom: 5px">Tambah Data</a>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>NIM</th>
                                            <th>Nama</th>
                                            <th>Tempat Lahir</th>
                                            <th>Tanggal Lahir</th>
                                            <th>Jenis Kelamin</th>
                                            <th>Jurusan</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        $sql = $koneksi->query("select * from tb_anggota");

                                        while ($data=$sql->fetch_assoc()) {
                                            # code...
                                            

                                        ?> 

                                        <tr>
                                            <td><?php echo $no++; ?></td>
                                            <td><?php echo $data['nim'];?></td>
                                            <td><?php echo $data['nama'];?></td>
                                            <td><?php echo $data['tempat_lahir'];?></td>
                                            <td><?php echo $data['tanggal_lahir'];?></td>
                                            <td><?php echo $data['jk'];?></td>
                                            <td><?php echo $data['jurusan'];?></td>
                                            <td>
                                                <a href="?page=anggota&aksi=ubah&nim=<?php echo $data['nim']; ?>" class="btn btn-info">Ubah</a>
                                                <a onclick="return confirm('Anda yakin ingin meghapus data ini ?')" href="?page=anggota&aksi=hapus&nim=<?php echo $data['nim']; ?>" class="btn btn-danger">Hapus</a>
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