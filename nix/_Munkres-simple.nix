{
  "0.1.0.0" = {
    sha256 = "9bb137b918445e1822bce379acb57972396ad78da430bd293cf95c3928ed1340";
    revisions = {
      r0 = {
        nix = import ../hackage/Munkres-simple-0.1.0.0-r0-644efdb0d2f969bfbdcc2852661475340fe3b2456e98cce48a7bc5001b1b920a.nix;
        revNum = 0;
        sha256 = "644efdb0d2f969bfbdcc2852661475340fe3b2456e98cce48a7bc5001b1b920a";
      };
      r1 = {
        nix = import ../hackage/Munkres-simple-0.1.0.0-r1-a6e9c0e0b0855510bb19e6d97983f7c8f15e9fd227d62c58789662c322b30927.nix;
        revNum = 1;
        sha256 = "a6e9c0e0b0855510bb19e6d97983f7c8f15e9fd227d62c58789662c322b30927";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "2b0b964aad3898d2053d411f93f8cf52f85ce57b73cbd41d2c112d98f119bb4c";
    revisions = {
      r0 = {
        nix = import ../hackage/Munkres-simple-0.1.0.1-r0-b01aa66c3739934515889bca3d4cf8610a7a45b9e341fe81d5bc04e73fce8f51.nix;
        revNum = 0;
        sha256 = "b01aa66c3739934515889bca3d4cf8610a7a45b9e341fe81d5bc04e73fce8f51";
      };
      default = "r0";
    };
  };
}