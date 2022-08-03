{
  "0.1.0.0" = {
    sha256 = "dc78825f947e9394f63b07df5df3f603a5ea6a4a726b7f1e6cf76b90b7037ea4";
    revisions = {
      r0 = {
        nix = import ../hackage/util-primitive-0.1.0.0-r0-3da02a3b8b301950a0d4489abc3827a822c62649af26b744f745fa210984e428.nix;
        revNum = 0;
        sha256 = "3da02a3b8b301950a0d4489abc3827a822c62649af26b744f745fa210984e428";
        };
      r1 = {
        nix = import ../hackage/util-primitive-0.1.0.0-r1-39d207232828f265de5d4ef4d9028c732853f3edb205027a41e5bd8319ba8f72.nix;
        revNum = 1;
        sha256 = "39d207232828f265de5d4ef4d9028c732853f3edb205027a41e5bd8319ba8f72";
        };
      default = "r1";
      };
    };
  }