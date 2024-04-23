{
  "0.14" = {
    sha256 = "ea808e90b4ee2a5c5b27e3c0aff4044b05e433fc578fb1278dd8f9b385683cf7";
    revisions = {
      r0 = {
        nix = import ../hackage/hsc3-rw-0.14-r0-8c96da620a8e4abb16b77c7ea9b0115ad9c603819ee863c25a0788dfa93a78bc.nix;
        revNum = 0;
        sha256 = "8c96da620a8e4abb16b77c7ea9b0115ad9c603819ee863c25a0788dfa93a78bc";
      };
      default = "r0";
    };
  };
  "0.15" = {
    sha256 = "17fd21044aec0ee2b70118b3da1d63cfc9d1f89d2b98bf8ae39c381b14e096c9";
    revisions = {
      r0 = {
        nix = import ../hackage/hsc3-rw-0.15-r0-4b47a8c9bd1b6ee1a34306db40c3b46a371a1318f3ab1d6e04e28cf012abd5af.nix;
        revNum = 0;
        sha256 = "4b47a8c9bd1b6ee1a34306db40c3b46a371a1318f3ab1d6e04e28cf012abd5af";
      };
      default = "r0";
    };
  };
}