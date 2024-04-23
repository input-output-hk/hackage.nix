{
  "0" = {
    sha256 = "8c21a14a9e1dba84429aa3cab448a7219d65a7799b41cf74f9956c3dc2d23193";
    revisions = {
      r0 = {
        nix = import ../hackage/equeue-0-r0-e20da2075514267b59451aa9752982586ad471457c71c4a2b1235694b905df01.nix;
        revNum = 0;
        sha256 = "e20da2075514267b59451aa9752982586ad471457c71c4a2b1235694b905df01";
      };
      r1 = {
        nix = import ../hackage/equeue-0-r1-52b8fde3ea83fb6061c829d5b044dae75692ccfb93f9a4715d6e4913ab930f45.nix;
        revNum = 1;
        sha256 = "52b8fde3ea83fb6061c829d5b044dae75692ccfb93f9a4715d6e4913ab930f45";
      };
      default = "r1";
    };
  };
}