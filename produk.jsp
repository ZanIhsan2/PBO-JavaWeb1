<%-- 
    Document   : produk
    Created on : 18 Dec 2025, 15.24.05
    Author     : LENOVO
--%>
<%@page import="dao.ProdukDAO"%>
<%@page import="dao.JenisDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Produk"%>
<%@page import="model.Jenis" %>
<%@page import="java.sql.Connection"%>
<%
    try {
        Class.forName("org.postgresql.Driver");
//out.println("<b>Driver PostgreSQL TERLOAD</b><br>");
    } catch (Exception e) {
        out.println("<b>Driver PostgreSQL TIDAK TERLOAD</b><br>");
    }
    ProdukDAO dao = new ProdukDAO();
    List<Produk> daftarProduk = dao.getAll();

    JenisDAO daoJenis = new JenisDAO();
    List<Jenis> listJenis = daoJenis.getAll();

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Data Produk</h3>
        <!-- Button trigger modal form produk -->
        <button type="button"
                class="btn btn-primary float-end mb-3"
                data-bs-toggle="modal"
                data-bs-target="#exampleModal">
            Tambah
        </button>

        <!-- Modal Form Produk -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Tambah Data</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" method="POST" action="ProdukServlet">
                            <input type="hidden" name="id" id="id">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Kode Produk</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"
                                           name="kode" value="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Nama Produk</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"
                                           name="nama" value="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Jenis Produk</label>
                                <div class="col-sm-8">
                                    <select class="form-control" name="jenis">
                                        <option value="">-- Pilih Produk--</option>
                                        <%
                                            //ciptakan obj
                                            JenisDAO dao_jenis = new JenisDAO();
                                            //panggil method getAll
                                            List<Jenis> ls_jenis = dao_jenis.getAll();
                                            //looping data jenis produk
                                            for (Jenis obj : ls_jenis) {
                                        %>
                                        <option value="<%= obj.getId()%>"><%= obj.getNama()%></option>
                                        <% }%>
                                    </select> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Kondisi Produk</label>
                                <div class="col-sm-8">
                                    <select class="form-control" name="kondisi" id="kondisi">
                                        <option value="">-- Pilih Kondisi Produk --</option>
                                        <option value="baru">Baru</option>
                                        <option value="bekas">Bekas</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Harga Produk</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"
                                           name="harga" value="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Stok Produk</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"
                                           name="stok" value="">
                                </div>
                            </div>
                            <button type="submit"
                                    id="btnSimpan"
                                    name="proses"
                                    value="Simpan"
                                    class="btn btn-primary float-end">
                                Simpan
                            </button>

                            <button type="submit"
                                    id="btnUbah"
                                    name="proses"
                                    value="Ubah"
                                    class="btn btn-warning float-end d-none">
                                Ubah
                            </button>


                        </form>
                    </div>
                </div>
            </div>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kode</th>
                    <th>Nama Produk</th>
                    <th>Jenis Produk</th>
                    <th>Harga Produk</th>
                    <th>Stok</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int no = 1;
                    for (Produk p : daftarProduk) {
                %>
                <tr>
                    <td><%= no++%></td>
                    <td><%= p.getKode()%></td>
                    <td><%= p.getNama()%></td>
                    <td>
                        <%= (p.getJenis() != null) ? p.getJenis().getNama() : "-"%>
                    </td>
                    <td><%= p.getHarga()%></td>
                    <td><%= p.getStok()%></td>
                    <td>
                    <td>
                        <!-- EDIT -->
                        <button type="button"
                                class="btn btn-warning btn-sm"
                                data-bs-toggle="modal"
                                data-bs-target="#exampleModal"
                                data-id="<%= p.getId()%>"
                                data-kode="<%= p.getKode()%>"
                                data-nama="<%= p.getNama()%>"
                                data-jenis="<%= p.getJenis().getId()%>"
                                data-kondisi="<%= p.getKondisi()%>"
                                data-harga="<%= p.getHarga()%>"
                                data-stok="<%= p.getStok()%>">
                            Edit
                        </button>

                        <!-- HAPUS -->
                        <form action="ProdukServlet" method="POST" style="display:inline;">
                            <input type="hidden" name="id" value="<%= p.getId()%>">
                            <button type="submit"
                                    name="proses"
                                    value="Hapus"
                                    class="btn btn-danger btn-sm"
                                    onclick="return confirm('Anda Yakin Mau Hapus Data Ini?')">
                                Hapus
                            </button>
                        </form>
                    </td>
                    </td>
                </tr>
                <% }%>
            </tbody>
        </table>
        <!-- ================= SCRIPT MODAL ================= -->
        <script>
            const modal = document.getElementById('exampleModal');

            modal.addEventListener('show.bs.modal', function (event) {
                const btn = event.relatedTarget;
                const form = modal.querySelector('form');

                const btnSimpan = document.getElementById('btnSimpan');
                const btnUbah = document.getElementById('btnUbah');
                const title = document.getElementById('exampleModalLabel');

                form.reset();

                if (btn && btn.dataset.id) {
                    title.innerText = "Ubah Data Produk";
                    btnSimpan.classList.add('d-none');
                    btnUbah.classList.remove('d-none');

                    form.id.value = btn.dataset.id;
                    form.kode.value = btn.dataset.kode;
                    form.nama.value = btn.dataset.nama;
                    form.jenis.value = btn.dataset.jenis;
                    form.kondisi.value = btn.dataset.kondisi;
                    form.harga.value = btn.dataset.harga;
                    form.stok.value = btn.dataset.stok;
                } else {
                    title.innerText = "Tambah Data Produk";
                    btnSimpan.classList.remove('d-none');
                    btnUbah.classList.add('d-none');
                    form.id.value = "";
                }
            });
        </script>
    </body>
</html>
