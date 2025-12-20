{
  "0.1.0.0" = {
    sha256 = "19394b8f5b00c843fa180862e9b3276147c540a017f2ea4888ee063761add61c";
    revisions = {
      r0 = {
        nix = import ../hackage/stm-stats-0.1.0.0-r0-ace375f3c8ecbaa5f40a1b691c3cbee3cd289b7fc61c544f070416843c540a5d.nix;
        revNum = 0;
        sha256 = "ace375f3c8ecbaa5f40a1b691c3cbee3cd289b7fc61c544f070416843c540a5d";
      };
      r1 = {
        nix = import ../hackage/stm-stats-0.1.0.0-r1-004ac6825d3714ba72b1ff13b034c753f849dbe77a5b5f9ea68089256d726982.nix;
        revNum = 1;
        sha256 = "004ac6825d3714ba72b1ff13b034c753f849dbe77a5b5f9ea68089256d726982";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "0a4f39b1e9fffe50d6dfaa9c0b04977e510fae8b6bd3d7abb7076e8aa8f01345";
    revisions = {
      r0 = {
        nix = import ../hackage/stm-stats-0.2.0.0-r0-cb3494624d27de2c88e1c41cec8699fb1f742364642544829d43649051b11d85.nix;
        revNum = 0;
        sha256 = "cb3494624d27de2c88e1c41cec8699fb1f742364642544829d43649051b11d85";
      };
      r1 = {
        nix = import ../hackage/stm-stats-0.2.0.0-r1-60b4c4b3d444ab5b21b82e53d021a5b921c23a964d5388d239b6c7d225279e2c.nix;
        revNum = 1;
        sha256 = "60b4c4b3d444ab5b21b82e53d021a5b921c23a964d5388d239b6c7d225279e2c";
      };
      default = "r1";
    };
  };
}