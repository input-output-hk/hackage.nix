{
  "2.0" = {
    sha256 = "37be05a4788d202ca31d6132e4e77bd5ebf5d3672987adecc52b704e01342687";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-resiliencehub-2.0-r0-7b2dc2871e1f8f2929d7a3accc790616eca28f9c06b57c8599ee03f3dc20cff3.nix;
        revNum = 0;
        sha256 = "7b2dc2871e1f8f2929d7a3accc790616eca28f9c06b57c8599ee03f3dc20cff3";
      };
      r1 = {
        nix = import ../hackage/amazonka-resiliencehub-2.0-r1-307589c45b57aa13f386a56d2f8a0743126da829274483959a8d5dc6cc53ef41.nix;
        revNum = 1;
        sha256 = "307589c45b57aa13f386a56d2f8a0743126da829274483959a8d5dc6cc53ef41";
      };
      default = "r1";
    };
  };
}