{
  "0.1.0.1" = {
    sha256 = "6bd93119209f8cec4e913a489b233e46489212efe8fefdb6ae182393b6cd2ac7";
    revisions = {
      r0 = {
        nix = import ../hackage/storable-peek-poke-0.1.0.1-r0-a0a0e1f68261a4a14d04799d23787c59b1abafde865aa977cbfe360074814dbd.nix;
        revNum = 0;
        sha256 = "a0a0e1f68261a4a14d04799d23787c59b1abafde865aa977cbfe360074814dbd";
      };
      r1 = {
        nix = import ../hackage/storable-peek-poke-0.1.0.1-r1-995498db57fa66006de1c2a44ba901575b1e7b8ee89d9348d2a416307df69da2.nix;
        revNum = 1;
        sha256 = "995498db57fa66006de1c2a44ba901575b1e7b8ee89d9348d2a416307df69da2";
      };
      default = "r1";
    };
  };
}