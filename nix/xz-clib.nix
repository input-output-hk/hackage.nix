{
  "5.6.3" = {
    sha256 = "dbf5367b3ca260464562c2d36b8a65ea3ec5df6175adf2b7a708032ff318eb1e";
    revisions = {
      r0 = {
        nix = import ../hackage/xz-clib-5.6.3-r0-14c269bdca0041f0a87819db0794c69f7139f922966224172bf0285041f44c24.nix;
        revNum = 0;
        sha256 = "14c269bdca0041f0a87819db0794c69f7139f922966224172bf0285041f44c24";
      };
      default = "r0";
    };
  };
  "5.6.4" = {
    sha256 = "c7da2b744f9a5de94be0097b460f672f3b43a6fbdeb6dc8bd2adc73bc5284d0b";
    revisions = {
      r0 = {
        nix = import ../hackage/xz-clib-5.6.4-r0-b1336854be678ad6c4cf24b205eb3b5d28f9c29fd45ca566ca467119e84ce220.nix;
        revNum = 0;
        sha256 = "b1336854be678ad6c4cf24b205eb3b5d28f9c29fd45ca566ca467119e84ce220";
      };
      default = "r0";
    };
  };
}