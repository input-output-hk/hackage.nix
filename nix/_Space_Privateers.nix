{
  "0.1.0.0" = {
    sha256 = "70e6061caa2b7eed8be2d120ba165365e008c37a510290c8f89b926d6702473e";
    revisions = {
      r0 = {
        nix = import ../hackage/SpacePrivateers-0.1.0.0-r0-68b31b1d45990ddece2c3f7506fb202d3f6022bd2f588c0e0b81497f2c9a4766.nix;
        revNum = 0;
        sha256 = "68b31b1d45990ddece2c3f7506fb202d3f6022bd2f588c0e0b81497f2c9a4766";
      };
      r1 = {
        nix = import ../hackage/SpacePrivateers-0.1.0.0-r1-b59d607892ad860616cef196c83ff54388204102eae597acf88467a2f54764bf.nix;
        revNum = 1;
        sha256 = "b59d607892ad860616cef196c83ff54388204102eae597acf88467a2f54764bf";
      };
      default = "r1";
    };
  };
}