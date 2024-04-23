{
  "0.21.0" = {
    sha256 = "c2db117dcc9e9a293dc409ecc7813aaab52d891e0e26328f2866c50966eafeec";
    revisions = {
      r0 = {
        nix = import ../hackage/hdirect-0.21.0-r0-02bd0c14bac41ac2b7de082c4dae9b8c204548af87d43842af1eedb9e7ccfe9c.nix;
        revNum = 0;
        sha256 = "02bd0c14bac41ac2b7de082c4dae9b8c204548af87d43842af1eedb9e7ccfe9c";
      };
      r1 = {
        nix = import ../hackage/hdirect-0.21.0-r1-961c54137bbcc034596545ed45751771c5068b55e09fedd7dccb4e44bbfe05a6.nix;
        revNum = 1;
        sha256 = "961c54137bbcc034596545ed45751771c5068b55e09fedd7dccb4e44bbfe05a6";
      };
      default = "r1";
    };
  };
}