{
  "0.1" = {
    sha256 = "de7f43e035a9dcbbf08e60f0b35b06bd6dd9c9e1043c9f4180fd33656953d6fa";
    revisions = {
      r0 = {
        nix = import ../hackage/nested-sequence-0.1-r0-220dcedf2730bfe35263ee008393dd212fdaf541078ec68073d1766983b84983.nix;
        revNum = 0;
        sha256 = "220dcedf2730bfe35263ee008393dd212fdaf541078ec68073d1766983b84983";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "6cd980c6f15d6a664d8d8b1255a5472bf524e9bce956811b39ef61617a7b5e53";
    revisions = {
      r0 = {
        nix = import ../hackage/nested-sequence-0.2-r0-9530f264a7d398796bcbca105f5ec6cdca1408d35eb3b4f8a0a058aceaa0d32c.nix;
        revNum = 0;
        sha256 = "9530f264a7d398796bcbca105f5ec6cdca1408d35eb3b4f8a0a058aceaa0d32c";
      };
      default = "r0";
    };
  };
}