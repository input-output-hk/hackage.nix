{
  "1.0.0.0" = {
    sha256 = "01f505d9bcd823086a36aad22c325f9fe72d7ac4f2b20b1ccff9414e7d68c987";
    revisions = {
      r0 = {
        nix = import ../hackage/effectful-plugin-1.0.0.0-r0-0d1935dec73c17e1480f5656f369e55eb5dd63f6368c4909f473ef02270bf5d6.nix;
        revNum = 0;
        sha256 = "0d1935dec73c17e1480f5656f369e55eb5dd63f6368c4909f473ef02270bf5d6";
        };
      r1 = {
        nix = import ../hackage/effectful-plugin-1.0.0.0-r1-a89bd449c417f139a1e92f9d96d22a5c042f8350ec668acf7356a3203165e820.nix;
        revNum = 1;
        sha256 = "a89bd449c417f139a1e92f9d96d22a5c042f8350ec668acf7356a3203165e820";
        };
      r2 = {
        nix = import ../hackage/effectful-plugin-1.0.0.0-r2-7d1904a6b17f381cf086fc3527f49928734b3ac675e7c782f8aef908ab5682b5.nix;
        revNum = 2;
        sha256 = "7d1904a6b17f381cf086fc3527f49928734b3ac675e7c782f8aef908ab5682b5";
        };
      default = "r2";
      };
    };
  }