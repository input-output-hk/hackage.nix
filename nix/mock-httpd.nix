{
  "0.0.0.0" = {
    sha256 = "67ce01f5032abcb2236bffc1fc3550778ffc37149c347d24f12b18bb5f326657";
    revisions = {
      r0 = {
        nix = import ../hackage/mock-httpd-0.0.0.0-r0-2f4263c7627f41bae1af7a1e160ab65b71f8004831f7e112b07ccc05d92dbc67.nix;
        revNum = 0;
        sha256 = "2f4263c7627f41bae1af7a1e160ab65b71f8004831f7e112b07ccc05d92dbc67";
        };
      default = "r0";
      };
    };
  "1.0.0" = {
    sha256 = "e2e92b17233880c95f1c97ca59fd4f6070318f4af771b214e05cc07d2940c6b6";
    revisions = {
      r0 = {
        nix = import ../hackage/mock-httpd-1.0.0-r0-49dbc7296e5975773c11acac9f162923604380aa4dfb256682afa96c34807a6a.nix;
        revNum = 0;
        sha256 = "49dbc7296e5975773c11acac9f162923604380aa4dfb256682afa96c34807a6a";
        };
      default = "r0";
      };
    };
  }