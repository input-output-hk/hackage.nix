{
  "1.0.0.0" = {
    sha256 = "9aca36eb946881f016d36404c8b4da875577cced2dc76d668c939f232691ce75";
    revisions = {
      r0 = {
        nix = import ../hackage/yamlet-aeson-1.0.0.0-r0-f43ab6e43aed7161237b85fbc30e4fe28295c790ca624bc35fccdf4af036cd3d.nix;
        revNum = 0;
        sha256 = "f43ab6e43aed7161237b85fbc30e4fe28295c790ca624bc35fccdf4af036cd3d";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "586d713836ab1932228aea09dad2239348d4598cbdfdf371db4d91526cc03cd8";
    revisions = {
      r0 = {
        nix = import ../hackage/yamlet-aeson-1.0.0.1-r0-1af9a0cc79d669c422181e238c0bd5034e6623abda94f484bf159e5ea082be24.nix;
        revNum = 0;
        sha256 = "1af9a0cc79d669c422181e238c0bd5034e6623abda94f484bf159e5ea082be24";
      };
      default = "r0";
    };
  };
}