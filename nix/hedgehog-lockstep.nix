{
  "0.1.0.0" = {
    sha256 = "8ecfd80de8c3515b7392128a602f3c4b413cb10e26428b03ac71666af35a7449";
    revisions = {
      r0 = {
        nix = import ../hackage/hedgehog-lockstep-0.1.0.0-r0-64d3e1fc8b5a66bdd4a5e509b3347c4d47b2a204bc5474f5e786364ac8319c30.nix;
        revNum = 0;
        sha256 = "64d3e1fc8b5a66bdd4a5e509b3347c4d47b2a204bc5474f5e786364ac8319c30";
      };
      r1 = {
        nix = import ../hackage/hedgehog-lockstep-0.1.0.0-r1-5a8d298b5f90d11de0a8740313aae814dfabec2a35f06e9564495567499f3a98.nix;
        revNum = 1;
        sha256 = "5a8d298b5f90d11de0a8740313aae814dfabec2a35f06e9564495567499f3a98";
      };
      default = "r1";
    };
  };
}