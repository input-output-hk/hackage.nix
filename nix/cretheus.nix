{
  "1.0.0" = {
    sha256 = "d29ee13ef343126803c257c9342b9a9d87af2bce643b6a5d45d15224cfcd40fd";
    revisions = {
      r0 = {
        nix = import ../hackage/cretheus-1.0.0-r0-79eacb5e57c9e1a5ea10e16b53562727232a3c085fdc0d7433aba73629580599.nix;
        revNum = 0;
        sha256 = "79eacb5e57c9e1a5ea10e16b53562727232a3c085fdc0d7433aba73629580599";
      };
      default = "r0";
    };
  };
  "1.1.0" = {
    sha256 = "cfe88dd0835ccf89c2af2ef5ae1097004911ee99501fb32f7407a5f5d0a60571";
    revisions = {
      r0 = {
        nix = import ../hackage/cretheus-1.1.0-r0-acdd17a3ada12785bd6d5f44770625a27736f5a00dec2e1762359f22d02afff4.nix;
        revNum = 0;
        sha256 = "acdd17a3ada12785bd6d5f44770625a27736f5a00dec2e1762359f22d02afff4";
      };
      default = "r0";
    };
  };
}