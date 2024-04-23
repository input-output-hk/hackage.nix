{
  "0.0.1" = {
    sha256 = "04026d13255315973acacda95c65950378670f1b3cbe0effc02b4a381f216c56";
    revisions = {
      r0 = {
        nix = import ../hackage/set-with-0.0.1-r0-002b2f797481e427a54c49246572e6f18dca2c6dfad9e3575386d41f7f83836f.nix;
        revNum = 0;
        sha256 = "002b2f797481e427a54c49246572e6f18dca2c6dfad9e3575386d41f7f83836f";
      };
      r1 = {
        nix = import ../hackage/set-with-0.0.1-r1-e5141009cfe54feed345af4d2a775c48bec6e2e7f80a32990c519bba1155edbc.nix;
        revNum = 1;
        sha256 = "e5141009cfe54feed345af4d2a775c48bec6e2e7f80a32990c519bba1155edbc";
      };
      default = "r1";
    };
  };
}