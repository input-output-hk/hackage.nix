{
  "1.0.0" = {
    sha256 = "898b04084062b565a0d5bbb6e9a051d07254ac9e9b908f3048bd72488cda69bf";
    revisions = {
      r0 = {
        nix = import ../hackage/scfg-1.0.0-r0-55a9c526e04c4daeab77180656ec106e47fd2de45447c1f59172d143bc4be9c6.nix;
        revNum = 0;
        sha256 = "55a9c526e04c4daeab77180656ec106e47fd2de45447c1f59172d143bc4be9c6";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "97d9408d6ab6c7f25807df4d3d2e8e54ef017b8ce1b27c7acff1d60820cf6a36";
    revisions = {
      r0 = {
        nix = import ../hackage/scfg-1.0.1-r0-3dd230de9bf35a45a5f45fcb92232d83bd6b6dec421dd8de50bab883c5f90c7b.nix;
        revNum = 0;
        sha256 = "3dd230de9bf35a45a5f45fcb92232d83bd6b6dec421dd8de50bab883c5f90c7b";
      };
      default = "r0";
    };
  };
}