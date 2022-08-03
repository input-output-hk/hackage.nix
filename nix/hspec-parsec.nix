{
  "0" = {
    sha256 = "decc5a32ba44968fbe69f213cb97a6c7d3a4601fa8df75365f7727f61b41a4e0";
    revisions = {
      r0 = {
        nix = import ../hackage/hspec-parsec-0-r0-ede42f1b97529b5052ab45457643ecccf87a7f4ccdf1fb9598fc7450e89614fa.nix;
        revNum = 0;
        sha256 = "ede42f1b97529b5052ab45457643ecccf87a7f4ccdf1fb9598fc7450e89614fa";
        };
      r1 = {
        nix = import ../hackage/hspec-parsec-0-r1-3469e0c2dbdbacc7adf27314a239c6d8a19790006a71dc82c0909b5b18efda0e.nix;
        revNum = 1;
        sha256 = "3469e0c2dbdbacc7adf27314a239c6d8a19790006a71dc82c0909b5b18efda0e";
        };
      default = "r1";
      };
    };
  }