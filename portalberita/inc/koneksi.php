<?php

// Koneksi ke database

$connect = mysqli_connect('localhost', 'root', '', 'portalberita');

if (!$connect) {
    echo "Gagal koneksi ke Database". mysqli_connect_error();
} 

