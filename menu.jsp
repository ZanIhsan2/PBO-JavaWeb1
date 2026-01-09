<nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">STT-NF</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" 
                       href="index.jsp?halaman=home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp?halaman=about">About Us</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Master Data
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="index.jsp?halaman=jenis">Jenis</a></li>
                        <li><a class="dropdown-item" href="index.jsp?halaman=produk">Produk</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">User</a></li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a href="index.jsp?halaman=contact" class="nav-link" aria-disabled="true">Contact Us</a>
                </li>

                <!-- ======== Menu Login Tampil Jika Belum Berhasil Login ======== -->
                <%
                    if (session.getAttribute("USER") == null) {
                %>    
                <li class="nav-item">
                    <a href="index.jsp?halaman=login" class="nav-link" aria-disabled="true">Login</a>
                </li>
                <!-- ==Jika Sudah Berhasil Login, Tampil Username & Menu Logout== -->
                <%
                } else {
                %>  
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Hello, <%= session.getAttribute("USERNAME")%>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" 
                               href="">Profile</a></li>
                        <li><a class="dropdown-item" 
                               href="">Change Password</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
                    </ul>
                </li>
                <%
                    }
                %>          

            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>