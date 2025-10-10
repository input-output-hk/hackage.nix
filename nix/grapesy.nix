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
  "1.1.0" = {
    sha256 = "ee43417b555e297b6e96c3a1da96e3161cca0f65b0b9a6c5415c197a10e929ff";
    revisions = {
      r0 = {
        nix = import ../hackage/grapesy-1.1.0-r0-7208669b7ddec9b133fb524b3e35bd7ab5ab29f7448e822dc4112dc2dcb46fd9.nix;
        revNum = 0;
        sha256 = "7208669b7ddec9b133fb524b3e35bd7ab5ab29f7448e822dc4112dc2dcb46fd9";
      };
      default = "r0";
    };
  };
  "1.1.1" = {
    sha256 = "54a0591cacf2d1aca0572a2df0552cec5e5a405fd68b97b7119675778df09d69";
    revisions = {
      r0 = {
        nix = import ../hackage/grapesy-1.1.1-r0-ac879eec75aee8e78a2d3652fae31e965ae23c194667b61c3434edd642908c53.nix;
        revNum = 0;
        sha256 = "ac879eec75aee8e78a2d3652fae31e965ae23c194667b61c3434edd642908c53";
      };
      default = "r0";
    };
  };
}