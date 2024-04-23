{
  "0.1.0.0" = {
    sha256 = "663c51776b95368606ebf1590df4ebc7b6f659283f9d6e091cb8d6433f553175";
    revisions = {
      r0 = {
        nix = import ../hackage/persistent-spatial-0.1.0.0-r0-dfbb12e2824f6125af97bf1650f1f4284861753f16b7a0e52247071b6015b104.nix;
        revNum = 0;
        sha256 = "dfbb12e2824f6125af97bf1650f1f4284861753f16b7a0e52247071b6015b104";
      };
      r1 = {
        nix = import ../hackage/persistent-spatial-0.1.0.0-r1-e83f66122044bf123f2a096154b33395ae8b1c724d6387766a1669b3c6140da3.nix;
        revNum = 1;
        sha256 = "e83f66122044bf123f2a096154b33395ae8b1c724d6387766a1669b3c6140da3";
      };
      default = "r1";
    };
  };
}