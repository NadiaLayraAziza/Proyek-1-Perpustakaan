<?php
    $nim = $_GET['nim'];
    $sql = $koneksi->query("select * from tb_anggota where nim ='$nim'");
 
    $tampil = $sql->fetch_assoc();

    $jk1 = $tampil['jk'];
    $jurusan1 = $tampil['jurusan'];
?>

<div class="panel panel-default">
<div align="center" font="7" class="panel-heading">
    Ubah Data
</div>
<div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    
                                    <form method="POST">
                                        <div class="form-group">
                                            <label>NIM</label>
                                            <input class="form-control" name="nim" value="<?php echo $tampil['nim'];?>" readonly />
                                            
                                        </div>

                                        <div class="form-group">
                                            <label>Nama</label>
                                            <input class="form-control" name="nama" value="<?php echo $tampil['nama'];?>" />
                                            
                                        </div>

                                        <div class="form-group">
                                            <label>Tempat Lahir</label>
                                            <input class="form-control" name="tempat_lahir" value="<?php echo $tampil['tempat_lahir'];?>" />
                                            
                                        </div>

                                        <div class="form-group">
                                            <label>Tanggal Lahir</label>
                                            <input class="form-control" name="tanggal_lahir" type="date" value="<?php echo $tampil['tanggal_lahir'];?>" />
                                            
                                        </div>

                                        <div class="form-group">
                                            <label>Jenis Kelamin</label><br>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" value="Laki-laki" name="jk" <?php if ($jk1=='Laki-laki') {
                                                    echo "selected";}?> /> Laki-laki
                                            </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" value="Perempuan" name="jk" <?php if ($jk1=='Perempuan') {
                                                    echo "selected";}?> /> Perempuan
                                            </label>
                                        </div>

                                        <div class="form-group">
                                            <label>Jurusan</label>
                                            <select class="form-control" name="jurusan">
                                                <option value="Teknik Elektro" <?php if ($jurusan1=='Teknik Elektro') {
                                                    echo "selected";} ?>>Teknik Elektro</option>
                                                <option value="Teknik Mesin" <?php if ($jurusan1=='Teknik Mesin') {
                                                    echo "selected";} ?>>Teknik Mesin</option>
                                                <option value="Teknologi Informasi" <?php if ($jurusan1=='Teknologi Informasi') {
                                                    echo "selected";} ?>>Teknologi Informasi</option>
                                                <option value="Teknik Sipil" <?php if ($jurusan1=='Teknik Sipil') {
                                                    echo "selected";} ?>>Teknik Sipil</option>
                                                <option value="Teknik Kimia" <?php if ($jurusan1=='Teknik Kimia') {
                                                    echo "selected";} ?>>Teknik Kimia</option>
                                                <option value="Akuntansi" <?php if ($jurusan1=='Akuntansi') {
                                                    echo "selected";} ?>>Akuntansi</option>
                                                <option value="Administrasi Niaga" <?php if ($jurusan1=='Administrasi Niaga') {
                                                    echo "selected";} ?>>Administrasi Niaga</option>
                                            </select>
                                        </div>

                                        </div>
                                        <input type="submit" name="simpan" value="Simpan" class="btn btn-primary">

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
		$sql = $koneksi->query("update tb_anggota set nim='$nim', nama='$nama', tempat_lahir='$tempat_lahir', tanggal_lahir='$tanggal_lahir', jk='$jk', jurusan='$jurusan' where nim='$nim'");

		if ($sql) {
			?>

			<script type="text/javascript">
				alert ("Perubahan Berhasil Disimpan");
				window.location.href="?page=anggota";
			</script>
			<?php
		}
	}
?>                              
