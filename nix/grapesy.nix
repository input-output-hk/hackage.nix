{
  "1.0.0" = {
    sha256 = "75ef51004b07b607a8bd8211437dbbb02c4f0ae1f6c60ff3bfabc85356272bef";
    revisions = {
      r0 = {
        nix = import ../hackage/grapesy-1.0.0-r0-be83066724b72689df3aadec7b577734390357f551769ac4af5b88e99fe8ade7.nix;
        revNum = 0;
        sha256 = "be83066724b72689df3aadec7b577734390357f551769ac4af5b88e99fe8ade7";
      };
      r1 = {
        nix = import ../hackage/grapesy-1.0.0-r1-d6484bb5433a46cdda0935ac610b8d5c01ed243f53302c27d4edde86e9f7d290.nix;
        revNum = 1;
        sha256 = "d6484bb5433a46cdda0935ac610b8d5c01ed243f53302c27d4edde86e9f7d290";
      };
      default = "r1";
    };
  };
}