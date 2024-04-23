{
  "0.0.0.1" = {
    sha256 = "c70caca2de34152825c34ce3469e0400bcbcc4ea372e88f298b5fd69dba4c51c";
    revisions = {
      r0 = {
        nix = import ../hackage/secure-memory-0.0.0.1-r0-440500b9148fdeb9902c45dfd9f7b102ba65cab8e806713343492a5792d585fe.nix;
        revNum = 0;
        sha256 = "440500b9148fdeb9902c45dfd9f7b102ba65cab8e806713343492a5792d585fe";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "7898923f28c66b1e9d61fbc42c589c1a730a512312216bbc41dde485d7f36598";
    revisions = {
      r0 = {
        nix = import ../hackage/secure-memory-0.0.0.2-r0-82d84d94424334ff999ff15b4d3477838efbbdf848d8a7774aceaa04971176c4.nix;
        revNum = 0;
        sha256 = "82d84d94424334ff999ff15b4d3477838efbbdf848d8a7774aceaa04971176c4";
      };
      default = "r0";
    };
  };
}