<?php session_start(); ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="../css/all.css" rel="stylesheet">
    <link href="../css/bootstrap.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

    <nav class="navbar navbar-expand-lg bg-body-tertiary bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/ahmed/">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active text-light" aria-current="page" href="/ahmed/customers/">Coustomers</a>
                </div>
                <div class="navbar-nav">
                    <a class="nav-link active text-light" aria-current="page" href="/ahmed/orders/">Orders</a>
                </div>
            </div>
        </div>
    </nav>

</head>

<body>