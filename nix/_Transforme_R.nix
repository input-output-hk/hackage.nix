{
  "0.1.0.0" = {
    sha256 = "5fb5ff75d4d54c56a26c12abdebb421d9b78ed1419c2cde8bc8e59344dfd3af0";
    revisions = {
      r0 = {
        nix = import ../hackage/TransformeR-0.1.0.0-r0-aa19c94c810094f23bbf5cc041aa61b3ab053ae604cfdd24e7f5f5fd5993bd35.nix;
        revNum = 0;
        sha256 = "aa19c94c810094f23bbf5cc041aa61b3ab053ae604cfdd24e7f5f5fd5993bd35";
      };
      r1 = {
        nix = import ../hackage/TransformeR-0.1.0.0-r1-5b1cee36dc005c693c765b6ca9422ec3aae7b98ea0d4ab68e27b198c2b4214be.nix;
        revNum = 1;
        sha256 = "5b1cee36dc005c693c765b6ca9422ec3aae7b98ea0d4ab68e27b198c2b4214be";
      };
      default = "r1";
    };
  };
}