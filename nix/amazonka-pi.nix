{
  "2.0" = {
    sha256 = "95ce8dcbe667b9c1b4cc637aa23cad343a97c7639a0223a6777198cb6b90f8d6";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-pi-2.0-r0-75a8291b2ef790fe6b05ba1d7e5d0892724c88d024a974bd9871d937606a3a15.nix;
        revNum = 0;
        sha256 = "75a8291b2ef790fe6b05ba1d7e5d0892724c88d024a974bd9871d937606a3a15";
      };
      r1 = {
        nix = import ../hackage/amazonka-pi-2.0-r1-86dcdd730d27f88b0f203d509aa4c1ff8c8d06b0c2da60044e66ffc8a9bc6f1f.nix;
        revNum = 1;
        sha256 = "86dcdd730d27f88b0f203d509aa4c1ff8c8d06b0c2da60044e66ffc8a9bc6f1f";
      };
      default = "r1";
    };
  };
}