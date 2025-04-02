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
  "1.0.1" = {
    sha256 = "97a7a70e24facb8c38391c6099978dcef7dc02684ead6d5ac337e3b52f59f4c6";
    revisions = {
      r0 = {
        nix = import ../hackage/grapesy-1.0.1-r0-c38da107f5caddfa87f802d82e36f292f12fbf53908b6bb44b252d929c72c8dc.nix;
        revNum = 0;
        sha256 = "c38da107f5caddfa87f802d82e36f292f12fbf53908b6bb44b252d929c72c8dc";
      };
      default = "r0";
    };
  };
}