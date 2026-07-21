{
  "0.1.0.0" = {
    sha256 = "c4efa916bbf0d9e8f027eb643989e1d33ea5a1b1668df34b0b01668e5dc5dd47";
    revisions = {
      r0 = {
        nix = import ../hackage/circuits-0.1.0.0-r0-84409a4eba7c5e523f55e8de02d056b0be02b3df781ff63933e32cb0078bebd2.nix;
        revNum = 0;
        sha256 = "84409a4eba7c5e523f55e8de02d056b0be02b3df781ff63933e32cb0078bebd2";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "09a381a6dafade62dfc1daef4c5587eeefa399c0b7bb2e44c828f4f537487de0";
    revisions = {
      r0 = {
        nix = import ../hackage/circuits-0.2.0.0-r0-d8cdce79b8af52b3fcb1225231f6b69ce8cf21df9b3490ae97ae100b1a1bd257.nix;
        revNum = 0;
        sha256 = "d8cdce79b8af52b3fcb1225231f6b69ce8cf21df9b3490ae97ae100b1a1bd257";
      };
      default = "r0";
    };
  };
}