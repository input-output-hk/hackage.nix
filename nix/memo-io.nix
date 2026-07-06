{
  "1.0.0" = {
    sha256 = "22ebb7db57e790e4f1386a3f19928f0397bc303f5e0056bbbad743fb64cb6cd6";
    revisions = {
      r0 = {
        nix = import ../hackage/memo-io-1.0.0-r0-947eb40f422e4873e54ba3bdc546cd696fd070c2c3890498a8bd2d444ec9684b.nix;
        revNum = 0;
        sha256 = "947eb40f422e4873e54ba3bdc546cd696fd070c2c3890498a8bd2d444ec9684b";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "6747ebc7f384142ba2def8fd21d88836154c2ee55e751333849fecc01dfa465d";
    revisions = {
      r0 = {
        nix = import ../hackage/memo-io-1.0.0.1-r0-3c92206d80645eae5bb33fbdc6b7c10c83629bc137baaecbd61773fc3add3692.nix;
        revNum = 0;
        sha256 = "3c92206d80645eae5bb33fbdc6b7c10c83629bc137baaecbd61773fc3add3692";
      };
      default = "r0";
    };
  };
}