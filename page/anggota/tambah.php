<div class="panel panel-default">
                        <div align="center" font="7" class="panel-heading">
    Tambah Data
</div>
<div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    
                                    <form method="POST">
                                        <div class="form-group">
                                            <label>NIM</label>
                                            <input class="form-control" name="nim" />
                                            
                                        </div>

                                        <div class="form-group">
                                            <label>Nama</label>
                                            <input class="form-control" name="nama" />
                                            
                                        </div>

                                        <div class="form-group">
                                            <label>Tempat Lahir</label>
                                            <input class="form-control" name="tempat_lahir" />
                                            
                                        </div>

                                        <div class="form-group">
                                            <label>Tanggal Lahir</label>
                                            <input class="form-control" type="date" name="tanggal_lahir" />
                                            
                                        </div>

                                        <div class="form-group">
                                            <label>Jenis Kelamin</label><br>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" value="Laki-laki" name="jk" /> Laki-laki
                                            </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" value="Perempuan" name="jk" /> Perempuan
                                            </label>
                                        </div>

                                        <div class="form-group">
                                            <label>Jurusan</label>
                                            <select class="form-control" name="jurusan">
                                                <option value="Teknik Elektro">Teknik Elektro</option>
                                                <option value="Teknik Mesin">Teknik Mesin</option>
                                                <option value="Teknologi Informasi">Teknologi Informasi</option>
                                                <option value="Teknik Sipil">Teknik Sipil</option>
                                                <option value="Teknik Kimia">Teknik Kimia</option>
                                                <option value="Akuntansi">Akuntansi</option>
                                                <option value="Administrasi Niaga">Administrasi Niaga</option>
                                            </select>
                                        </div>

                                        </div>
                                        <input type="submit" name="simpan" value="Simpan" style="margin-left: 15px" class="btn btn-primary">

                                </div>
                            </div>
                        </form>
                         </div>
</div>
</div>
</div>  

<?php

    $nim = $_POST['nim'];
    $nama = $_POST['nama'];
    $tempat_lahir = $_POST['tempat_lahir'];
    $tanggal_lahir = $_POST['tanggal_lahir'];
    $jk = $_POST['jk'];
    $jurusan = $_POST['jurusan'];
    $simpan = $_POST['simpan'];

    if ($simpan) {
        $sql = $koneksi->query("insert into tb_anggota (nim, nama, tempat_lahir, tanggal_lahir, jk, jurusan) values ('$nim', '$nama', '$tempat_lahir', '$tanggal_lahir', '$jk', '$jurusan')");

        if ($sql) {
            ?>

            <script type="text/javascript">
                alert ("Data Berhasil Disimpan");
                window.location.href="?page=anggota";
            </script>
            <?php
        }
    }
?>                              
