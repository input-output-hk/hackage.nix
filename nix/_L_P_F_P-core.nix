{
  "1.1.1" = {
    sha256 = "c13ab5cd82662878def2fb6e443d345ebce6e4c7cf45beb89a5160185e49160c";
    revisions = {
      r0 = {
        nix = import ../hackage/LPFP-core-1.1.1-r0-a3aaa2bac03e50fd2c9837ed45df037c1dfd94c5fe66ebab479932c27cf82606.nix;
        revNum = 0;
        sha256 = "a3aaa2bac03e50fd2c9837ed45df037c1dfd94c5fe66ebab479932c27cf82606";
      };
      r1 = {
        nix = import ../hackage/LPFP-core-1.1.1-r1-1f0aac0efd125abb6d1470071793ab5818aed29d2db431868e39b8ab8a69b6ff.nix;
        revNum = 1;
        sha256 = "1f0aac0efd125abb6d1470071793ab5818aed29d2db431868e39b8ab8a69b6ff";
      };
      default = "r1";
    };
  };
}