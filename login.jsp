<h3>Form Login</h3>
<div class="card">
    <div class="card-body">
        <form class="form-horizontal" method="POST" action="UsersServlet">
            <div class="form-group">
                <label class="col-sm-4 control-label">Username</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control"
                           name="username" value="">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Password</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control"
                           name="password" value="">
                </div>
            </div>
            <br/>
            <button type="submit" name="proses" value="Login"
                    class="btn btn-primary">
                Login
            </button>
        </form>
    </div>
</div>