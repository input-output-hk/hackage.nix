{
  "0.0.1" = {
    sha256 = "f625fc30cda6163ab396e9c0d70bda8510e3ef9df948a759e81764fd9e4a65a1";
    revisions = {
      r0 = {
        nix = import ../hackage/monadlist-0.0.1-r0-5638ae2ecd986bbcd7d059391501c8884e1864e2b59607785d08d20d68bb82ad.nix;
        revNum = 0;
        sha256 = "5638ae2ecd986bbcd7d059391501c8884e1864e2b59607785d08d20d68bb82ad";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "06bbe82c9fc2a35048788367da74bb5f79c7e6be2ae38eca20f332f8cbc5fdfe";
    revisions = {
      r0 = {
        nix = import ../hackage/monadlist-0.0.2-r0-978305e3f03dd5f65c673b551124dac0c39a247c2c14d84739ca9a3405fbb63a.nix;
        revNum = 0;
        sha256 = "978305e3f03dd5f65c673b551124dac0c39a247c2c14d84739ca9a3405fbb63a";
      };
      default = "r0";
    };
  };
}