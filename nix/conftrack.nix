{
  "0.0.1" = {
    sha256 = "51bdd96aff8537b4871498d67b936df8ab360b886aabec21a1dcb187a73aa2ec";
    revisions = {
      r0 = {
        nix = import ../hackage/conftrack-0.0.1-r0-f6fbee04b546ec70f36b97fde82439968024160ffcb6c1bd141207c88d497b27.nix;
        revNum = 0;
        sha256 = "f6fbee04b546ec70f36b97fde82439968024160ffcb6c1bd141207c88d497b27";
      };
      r1 = {
        nix = import ../hackage/conftrack-0.0.1-r1-b937c53e3928c11b1a3c6300e7adaee1799aaed525a56739a5a174a1e81ba073.nix;
        revNum = 1;
        sha256 = "b937c53e3928c11b1a3c6300e7adaee1799aaed525a56739a5a174a1e81ba073";
      };
      default = "r1";
    };
  };
}