{
  "0.2.0.0" = {
    sha256 = "a8c9737bc596d5eae5a7b3cff6d8b3d55e96c20b9d085592d7bd89f72c5c0c50";
    revisions = {
      r0 = {
        nix = import ../hackage/passman-cli-0.2.0.0-r0-bc5b337450897edbcd5521134687f7e7d12a8b09027ea1b4013399a120861b6f.nix;
        revNum = 0;
        sha256 = "bc5b337450897edbcd5521134687f7e7d12a8b09027ea1b4013399a120861b6f";
      };
      r1 = {
        nix = import ../hackage/passman-cli-0.2.0.0-r1-cc32aebb405d653d4ddcc5f2cfc426125f08b9a8fd8abc6d7bedabb305a3f5a4.nix;
        revNum = 1;
        sha256 = "cc32aebb405d653d4ddcc5f2cfc426125f08b9a8fd8abc6d7bedabb305a3f5a4";
      };
      default = "r1";
    };
  };
}