<?php
//Notifikasi
if($this->session->flashdata('sukses')){
    echo '<p class="alert alert-success">';
    echo $this->session->flashdata('sukses');
    echo '<div>';

}
?>
<?php
//eror uplod
if(isset($error)){
    echo '<p class="alert alert-warning">';
    echo $error;
    echo '</p>';
}
// Form Open
echo form_open_multipart(base_url('admin/konfigurasi'), ' class="form-horizontal"');

?>

<div class="form-group">
    <label class="col-md-3 control-label">Nama Website</label>
    <div class="col-md-5">
        <input type="text" name="namaweb" class="form-control" placeholder="Nama Website" value="<?php echo $konfigurasi->namaweb ?>" required>
    </div>
</div>

<div class="form-group">
    <label class="col-md-3 control-label">Tagline/Moto</label>
    <div class="col-md-5">
        <input type="text" name="tagline" class="form-control" placeholder="Tagline/Moto" value="<?php echo $konfigurasi->tagline ?>" required>
        
    </div>
</div>

<div class="form-group">
    <label class="col-md-3 control-label">Email</label>
    <div class="col-md-5">
        <input type="email" name="email" class="form-control" placeholder="Email" value="<?php echo $konfigurasi->email ?>" required>
        
    </div>
</div>

<div class="form-group">
    <label class="col-md-3 control-label">Website</label>
    <div class="col-md-5">
        <input type="text" name="website" class="form-control" placeholder="website" value="<?php echo $konfigurasi->website ?>" required>
        
    </div>
</div>



<div class="form-group">
    <label class="col-md-3 control-label">Alamat Facebook</label>
    <div class="col-md-5">
        <input type="text" name="website" class="form-control" placeholder="facebook" value="<?php echo $konfigurasi->facebook ?>" required>
        
    </div>
</div>


<div class="form-group">
    <label class="col-md-3 control-label">Alamat Instagram</label>
    <div class="col-md-5">
        <input type="text" name="instagram" class="form-control" placeholder="Instagram" value="<?php echo $konfigurasi->instagram ?>" required>
        
    </div>
</div>


<div class="form-group">
    <label class="col-md-3 control-label">Telepon/HP</label>
    <div class="col-md-5">
    <textarea name="text" class="form-control" placeholder="Teleponon"><?php echo $konfigurasi->telepon ?></textarea>
</div>
</div>


<div class="form-group">
    <label class="col-md-3 control-label">ALAMAT</label>
    <div class="col-md-5">
    <textarea name="alamat" class="form-control" placeholder="Alamat"><?php echo $konfigurasi->alamat ?></textarea>
</div>
</div>



<div class="form-group">
    <label class="col-md-3 control-label">Keyword (Untuk SEO Google)</label>
    <div class="col-md-5">
    <textarea name="Keywords" class="form-control" placeholder="Keyword (untuk SEO Google)"><?php echo $konfigurasi->keywords ?></textarea>
</div>
</div>

<div class="form-group">
    <label class="col-md-3 control-label">kode Metatext</label>
    <div class="col-md-5">
    <textarea name="metatext" class="form-control" placeholder="metatext"><?php echo $konfigurasi->metatext ?></textarea>
</div>
</div>


<div class="form-group">
    <label class="col-md-3 control-label">Deskripsi Website</label>
    <div class="col-md-5">
    <textarea name="deskripsi" class="form-control" placeholder="deskripsi"><?php echo $konfigurasi->deskripsi ?></textarea>
</div>
</div>


<div class="form-group">
    <label class="col-md-3 control-label">Rekening Pembayaran</label>
    <div class="col-md-5">
    <textarea name="rekening_pembayaran" class="form-control" placeholder="Rekening Pembayaran"><?php echo $konfigurasi->rekening_pembayaran ?></textarea>
</div>
</div>

<div class="form-group">
    <label class="col-md-3 control-label"></label>
    <div class="col-md-5">
        <button class="btn btn-success btn-lg" name="submit" type="submit">
            <i class="fa fa-save"></i> Simpan
        </button>
        <button class="btn btn-info btn-lg" name="reset" type="submit">
            <i class="fa fa-times"></i> Reset
        </button>
    </div>
</div>




<?= form_close();?>
