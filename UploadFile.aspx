﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadFile.aspx.cs" Inherits="UploadFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sistem Administrasi Dosen</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />


    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            background-attachment: fixed;
            /*color: white;*/
        }

        .header {
            text-align: center;
            background-color: #f8f9fa;
            /*padding: 20px 0;*/
            border-radius: 10px;
            padding-bottom: 20px;
            /*backdrop-filter: blur(10px);*/
        }

            /*.header img {
            max-width: 60%;
            height: auto;
            display: block;
            margin: 0 auto;
        }*/

            .header h1, .header h2 {
                /*color: #fff;*/
                font-weight: bold;
            }

        .button-container {
            text-align: center;
            margin: 20px 0;
        }

        .btn-custom {
            width: 300px;
            height: 50px;
            margin: 10px auto;
            font-size: 1rem;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 30px;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.2);
        }

            .btn-custom:hover {
                transform: scale(1.05);
                transition: 0.3s;
            }

        .footer {
            text-align: center;
            margin-top: 40px;
            font-size: 0.9rem;
            color: black;
        }

        .container {
            /*padding: 20px;*/
        }

        @media (min-width: 768px) {
            .container {
                padding-left: 250px;
                padding-right: 250px;
            }
        }

        @media (min-width: 1024px) {
            .container {
                padding-left: 250px;
                padding-right: 250px;
            }
        }
    </style>



</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header" style="position: relative; text-align: center;">
                <!-- Gambar UBP di belakang -->
                <img src="Images/ubp.png" alt="Kerja Sama UBP Logo" style="max-width: 70%; height: auto; z-index: 1;" />

                <!-- Gambar Fakultas FK di depan -->
                <div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -40%); z-index: 2;">
                    <img src="Images/fk.png" alt="Fakultas Logo" style="max-width: 130px; height: auto;" />
                </div>

                <!-- Judul dan Subjudul -->
                <h1 style="padding-top: 60px; z-index: 3; position: relative;">Sistem Administrasi Dosen</h1>
                <h4 style="z-index: 3; position: relative;">Universitas Buana Perjuangan Karawang</h4>
            </div>


            <div class="button-container">
                <asp:Button ID="btnJabatanAkademik" runat="server" Text="Jabatan Akademik" CssClass="btn btn-primary btn-custom"
                    OnClientClick="openInNewTab('https://drive.google.com/drive/folders/1-2WvVu8C6iO3mLrrIYHHQrvG0hUFh5DI?dmr=1&ec=wgc-drive-globalnav-goto'); return false;" />

                <asp:Button ID="btnLaporanPenelitian" runat="server" Text="Laporan Penelitian" CssClass="btn btn-primary btn-custom"
                    OnClientClick="openInNewTab('https://drive.google.com/drive/folders/1-2qh2SV3U5L5aYl2okz1P8P9Z8j4-ujR?dmr=1&ec=wgc-drive-globalnav-goto'); return false;" />

                <asp:Button ID="btnLaporanPengabdian" runat="server" Text="Laporan Pengabdian" CssClass="btn btn-primary btn-custom"
                    OnClientClick="openInNewTab('https://drive.google.com/drive/folders/1-4V3okZT_Wdu-oOfTpZVc9-PJH3gLIpG?dmr=1&ec=wgc-drive-globalnav-goto'); return false;" />

                <hr style="color: blue;" />

                <asp:Button ID="btnPublikasi" runat="server" Text="Publikasi" CssClass="btn btn-success btn-custom"
                    OnClientClick="openInNewTab('https://drive.google.com/drive/folders/1-5c_ZEn-jApNRp49AlnQNZZcjJDLpaKn?dmr=1&ec=wgc-drive-globalnav-goto'); return false;" />

                <asp:Button ID="btnHaki" runat="server" Text="HAKI" CssClass="btn btn-success btn-custom"
                    OnClientClick="openInNewTab('https://drive.google.com/drive/folders/1-7kkcDHEnOVrDQLjNiDFpryY2Gei2k8M?dmr=1&ec=wgc-drive-globalnav-goto'); return false;" />

                <asp:Button ID="btnBuku" runat="server" Text="BUKU" CssClass="btn btn-success btn-custom"
                    OnClientClick="openInNewTab('https://drive.google.com/drive/folders/1-C0YHfN0dgCYxs__zAKu-zQzbd9it58Y?dmr=1&ec=wgc-drive-globalnav-goto'); return false;" />

                <hr style="color: green;" />

                <asp:Button ID="btnSKKompetensi" runat="server" Text="Sertifikat Kompetensi" CssClass="btn btn-danger btn-custom"
                    OnClientClick="openInNewTab('https://drive.google.com/drive/folders/1-DjjpujnnxT5Sj8k-pm9arF-lyK3caj-?dmr=1&ec=wgc-drive-globalnav-goto'); return false;" />

                <asp:Button ID="btnSKFakultas" runat="server" Text="SK Fakultas" CssClass="btn btn-danger btn-custom"
                    OnClientClick="openInNewTab('https://drive.google.com/drive/folders/1-EfjwNcV5f-D2yz6GlI1YiRfJl4ysslW?dmr=1&ec=wgc-drive-globalnav-goto'); return false;" />

                <asp:Button ID="btlSKRektor" runat="server" Text="SK Rektor" CssClass="btn btn-danger btn-custom"
                    OnClientClick="openInNewTab('https://drive.google.com/drive/folders/1-GI_RT7LnED4g5fNIm0T9uG0XRhcuhqh?dmr=1&ec=wgc-drive-globalnav-goto'); return false;" />

                <hr style="color: red;" />

            </div>

            <div class="footer">
                &copy; 2025 Sistem Administrasi Dosen - Mewujudkan Efisiensi Administrasi Dosen, Menuju Kampus Cerdas.
            </div>
        </div>

        <br />
        <br />
    </form>

    <script>
        function openInNewTab(url) {
            window.open(url, '_blank');
        }
</script>
</body>
</html>
