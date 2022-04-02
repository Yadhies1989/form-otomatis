<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://select2.github.io/select2-bootstrap-theme/css/select2-bootstrap.css">

    <title>Form Otomatis</title>
    <style>
        .data-perkara {
            display: none;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row mt-3">
            <div class="col-md-8">
                <form id="form-siswa">
                    <div class="form-group">
                        <label for="nisn">Nomor Perkara</label>
                        <select name="no_perkaraname" id="no_perkaraid" class="form-control select2" onchange="show_dataperkara(this.value)">
                        </select>
                    </div>
                    <div class="form-group data-perkara">
                        <label for="pihak1_text">Nama Penggugat / Pemohon</label>
                        <input type="text" id="pihak1_text" class="form-control" readonly>
                    </div>
                    <div class="form-group data-perkara">
                        <label for="pihak2_text">Nama Tergugat / Termohon</label>
                        <input type="text" id="pihak2_text" class="form-control" readonly>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            // Format Select2 pada id nisn
            $("#no_perkaraid").select2({
                allowClear: true,
                theme: "bootstrap",
                placeholder: "Cari Nomor Perkara",
            });

            show_noperkara(); // Memanggil fungsi untuk menampilkan NISN
        });

        // fungsi untuk menampilkan NISN
        function show_noperkara() {
            $.ajax({
                // diganti
                url: "<?php echo base_url('index.php/siswa/get_nomor'); ?>",
                type: "GET",
                dataType: "JSON",
                success: function(x) {
                    if (x.status == true) {
                        $('#no_perkaraid').html('<option value=""></option>');
                        $.each(x.data, function(k, v) {
                            $('#no_perkaraid').append(`<option value="${v.nomor_perkara}">${v.nomor_perkara}</option>`);
                        });
                    }
                }
            });
        }

        // fungsi untuk menampilkan data siswa berdasarkan NISN
        function show_dataperkara(x) {
            $.ajax({
                url: "<?php echo base_url('index.php/siswa/get_perkawis'); ?>",
                type: "GET",
                dataType: "JSON",
                data: {
                    no_perkaraname: x
                    // harus sama dengan variabel name di views
                },
                success: function(x) {
                    if (x.status == true) {
                        $('.data-perkara').show()
                        $('#pihak1_text').val(x.data.pihak1_text);
                        $('#pihak2_text').val(x.data.pihak2_text);
                    }
                }
            });
        }
    </script>
</body>

</html>