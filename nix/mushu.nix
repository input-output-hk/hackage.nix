{
  "0.1.0" = {
    sha256 = "c955928232f09155713329fdb2a48125ff1815514fec1d6ad7ebc5f8c631eef1";
    revisions = {
      r0 = {
        nix = import ../hackage/mushu-0.1.0-r0-fae3190ae0d7fdd6304f6b841313e85722efb6a6a632d895bfea7887ebf37186.nix;
        revNum = 0;
        sha256 = "fae3190ae0d7fdd6304f6b841313e85722efb6a6a632d895bfea7887ebf37186";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "9b0a749a3f81d3101df1295ff0a2509604f5142d51e1daa97fab692c4b8b35f2";
    revisions = {
      r0 = {
        nix = import ../hackage/mushu-0.1.1-r0-b333071a66208556be0b7e603da30640bde063abe7bd0bf8bffe91160e697d93.nix;
        revNum = 0;
        sha256 = "b333071a66208556be0b7e603da30640bde063abe7bd0bf8bffe91160e697d93";
      };
      default = "r0";
    };
  };
}