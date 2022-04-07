<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Trang chủ</title>
  </head>
  <body>
    <header>
      <div class="navbar">
        <a href="">Home</a>
        <a href="">Document</a>
        <a href="<%= request.getContextPath() %>/OptionalServlet?index=0" class="login-btn">Login/Register </a>
      </div>
    </header>
    <main role="main">
      <div class="jumbotron">
        <div class="container">
          <h1 class="display-3">Chuyển PDF sang WORD!</h1>
          <p>
            Chuyển file PDF sang Word một cách kì diệu.Đăng nhập và nhấn 'chọn
            file' để tải file PDF của bạn lên. Sau đó, phần mềm của chúng tôi sẽ
            tự chuyển PDF sang Word. Cuối cùng, bạn có thể tải file mới về. Cách
            để chuyển đổi PDF sang Word trực tuyến và miễn phí thật sự quá dễ
            dàng với công cụ của chúng tôi. Bạn có thể thử ngày trên trang này.
          </p>
          <p>
            <a class="btn btn-primary btn-lg" href="#" role="button"
              >Learn more &raquo;</a
            >
          </p>
        </div>
      </div>

      <div class="container">
        <!-- Example row of columns -->
        <div class="row">
          <div class="col-md-4">
            <h2>An toàn!</h2>
            <p>
              Chúng tôi giữ file của bạn an toàn! Tất cả các file bạn tải lên và
              chuyển từ PDF sang Word sẽ được giữ trong cơ sở dữ liệu của tài
              khoản bạn. Xin hãy đọc chính sách riêng tư để biết thêm chi tiết.
            </p>
            <p>
              <a class="btn btn-secondary" href="#" role="button"
                >View details &raquo;</a
              >
            </p>
          </div>
          <div class="col-md-4">
            <h2>Nhanh và tiện lợi</h2>
            <p>
              Chuyển PDF sang Word trong giây lát Cách để chuyển đổi PDF sang
              Word trực tuyến và miễn phí thật sự quá dễ dàng với công cụ của
              chúng tôi. Bạn có thể thử ngày trên trang này.
            </p>
            <p>
              <a class="btn btn-secondary" href="#" role="button"
                >View details &raquo;</a
              >
            </p>
          </div>
          <div class="col-md-4">
            <h2>Windows, Mac và Linux</h2>
            <p>
              Phần mềm để chuyển PDF sang Word của chúng tôi làm việc trong
              trình duyệt trên mạng. Vì thế, nó hoạt động được với tất cả các hệ
              thống vận hành
            </p>
            <p>
              <a class="btn btn-secondary" href="#" role="button"
                >View details &raquo;</a
              >
            </p>
          </div>
        </div>
      </div>
      <!-- /container -->
    </main>
    <footer class="footer-wrap">
      <div class="footer-content">
        <div class="item">
          <h2 class="title">TAGS</h2>
          <div class="list-tags">
            <a href="" class="tag">Document</a>
            <a href="" class="tag">JSP-Servlet</a>
            <a href="" class="tag">Java</a>
            <a href="" class="tag">Maven</a>
            <a href="" class="tag">Library</a>
            <a href="" class="tag">HTML-CSS</a>
          </div>
        </div>
        <div class="item">
          <h2 class="title">ABOUT US</h2>
          <p>Đại học Bách Khoa - Đại học Đà Nẵng:</p>
          <br />
          <div class="list-tags">
            <a href="" class="tag">Công Huấn </a>
            <a href="" class="tag">Anh Khoa</a>
            <a href="" class="tag">Gia Bảo</a>
          </div>
          <br />
          <p>Team 3 - Lap trinh mang</p>
        </div>
        <div class="item">
          <h2 class="title">CONTACT</h2>
          <div class="subcribe-info">
            <p>Contact us if you have any questions.</p>
            <p>Join 3,453 other followers</p>
            <input
              type="email"
              name=""
              id=""
              placeholder="Enter your email address"
            />
            <button class="btn-subcribe">SUBCRIBE</button>
          </div>
        </div>
      </div>
      <hr />
      <div class="copyright">
        <p>
          <a href="#">WEBSITE BUILT WITH JSP-SERVLET</a>
        </p>
      </div>
    </footer>
  </body>
  <style>
    body {
      margin: 0;
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
        "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
        "Segoe UI Emoji", "Segoe UI Symbol";
      font-size: 1rem;
      font-weight: 400;
      line-height: 1.5;
      color: #212529;
      text-align: left;
      background-color: #fff;
    }

    /* Style for the navigation bar */
    .navbar {
      background-color: #545b62;
      overflow: hidden;
      width: 100%;
    }

    .navbar a {
      font-size: 20px;
      float: left;
      display: block;
      color: rgb(245, 239, 239);
      text-align: center;
      padding: 16px 30px 16px;
      text-decoration: none;
    }

    .navbar .login-btn {
      float: right;
    }

    a:hover {
      background-color: #42474d;
    }

    /* style for main */
    main {
      display: block;
      width: 90%;
      margin-left: 5%;
      height: 800px;
    }
    a {
      text-decoration: none;
      padding: 6px;
      border-radius: 6%;
    }
    .jumbotron {
      padding: 2rem 1rem;
      margin-bottom: 2rem;
      background-color: #e9ecef;
      border-radius: 0.3rem;
    }
    @media (min-width: 576px) {
      .jumbotron {
        padding: 4rem 2rem;
      }
    }

    .display-3 {
      font-size: 4.5rem;
      font-weight: 300;
      line-height: 1.2;
    }

    .btn-primary {
      color: #fff;
      background-color: #007bff;
      border-color: #007bff;
    }
    .btn-primary:hover {
      color: #fff;
      background-color: #0069d9;
      border-color: #0062cc;
    }
    .btn-primary.focus,
    .btn-primary:focus {
      box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.5);
    }
    .btn-primary.disabled,
    .btn-primary:disabled {
      color: #fff;
      background-color: #007bff;
      border-color: #007bff;
    }
    .btn-primary:not(:disabled):not(.disabled).active,
    .btn-primary:not(:disabled):not(.disabled):active,
    .show > .btn-primary.dropdown-toggle {
      color: #fff;
      background-color: #0062cc;
      border-color: #005cbf;
    }
    .btn-primary:not(:disabled):not(.disabled).active:focus,
    .btn-primary:not(:disabled):not(.disabled):active:focus,
    .show > .btn-primary.dropdown-toggle:focus {
      box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.5);
    }

    .btn-lg + .dropdown-toggle-split {
      padding-right: 0.75rem;
      padding-left: 0.75rem;
    }

    .btn-lg {
      padding: 0.5rem 1rem;
      font-size: 1.25rem;
      line-height: 1.5;
      border-radius: 0.3rem;
    }

    .row {
      width: 95%;
      margin-left: 20px;
      margin-right: 20px;
      display: flex;

      @media (max-width: 992px) {
        width: 90%;
      }

      @media (max-width: 750px) {
        width: 90%;
        display: block;
      }
    }

    .col-md-4 {
      width: 35%;
      margin: 0 15px 20px;
    }

    .btn-secondary {
      color: #fff;
      background-color: #6c757d;
      border-color: #6c757d;
    }
    .btn-secondary:hover {
      color: #fff;
      background-color: #5a6268;
      border-color: #545b62;
    }
    .btn-secondary.focus,
    .btn-secondary:focus {
      box-shadow: 0 0 0 0.2rem rgba(108, 117, 125, 0.5);
    }
    .btn-secondary.disabled,
    .btn-secondary:disabled {
      color: #fff;
      background-color: #6c757d;
      border-color: #6c757d;
    }
    .btn-secondary:not(:disabled):not(.disabled).active,
    .btn-secondary:not(:disabled):not(.disabled):active,
    .show > .btn-secondary.dropdown-toggle {
      color: #fff;
      background-color: #545b62;
      border-color: #4e555b;
    }
    .btn-secondary:not(:disabled):not(.disabled).active:focus,
    .btn-secondary:not(:disabled):not(.disabled):active:focus,
    .show > .btn-secondary.dropdown-toggle:focus {
      box-shadow: 0 0 0 0.2rem rgba(108, 117, 125, 0.5);
    }

    /*style for footer */
    .footer-wrap {
      padding: 20px 0 0;
      background-color: #545b62;
    }

    .footer-content {
      width: 95%;
      margin: 0 auto;
      display: flex;
      color: #fff;

      @media (max-width: 992px) {
        width: 95%;
      }

      @media (max-width: 750px) {
        width: 95%;
        display: block;
      }
    }

    .item {
      width: 35%;
      margin: 0 15px 20px;
    }
    .item p {
      margin: 0;
      font-size: 20px;
    }

    .title {
      background-color: #ececec;
      font-size: 18px;
      padding: 12px;
      color: #000;
      margin: 0 0 10px 0;
      font-weight: unset;
      text-align: center;
      word-wrap: break-word;
      position: relative;
      user-select: none;
    }

    .list-tags {
      display: flex;
      flex-wrap: wrap;
    }

    .list-tags .tag {
      border: 1px solid #fff;
      color: #fff;
      text-decoration: none;
      font-size: 20px;
      padding: 2px 7px;
      margin: 0 10px 10px 0;
      transition: 0.6s all linear;
    }

    .subcribe-info {
      padding: 0 15px 25px;
      background-color: #545b62;
      color: #fff;
      text-align: center;
    }

    .subcribe-info p {
      margin-bottom: 24px;
    }

    input {
      display: block;
      padding: 5px 10px;
      margin: 0 auto;
      border-radius: 3px;
      transition: all 0.5s ease-in-out;
      border: 1px solid transparent;
      margin-bottom: 24px;
      background-color: transparent;
      color: #fff;
    }

    .btn-subcribe {
      cursor: pointer;
      background-color: #ececec;
      padding: 10px 25px;
      color: #000;
      font-size: 12px;
      line-height: 1.5;
      text-align: center;
      border: 0;
      outline: 0;
      font-weight: 400;
      letter-spacing: 1px;
    }

    .copyright {
      height: 50px;
      text-align: center;
      padding: 20px 0;
    }

    .copyright a {
      font-size: 20px;
      color: #d3b062;
      text-decoration: none;
    }
  </style>
</html>