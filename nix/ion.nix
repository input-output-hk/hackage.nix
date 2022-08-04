{
  "1.0.0.0" = {
    sha256 = "24a364e30e6baeb531c8f040d3cea6d368c6457cabe58a21fb98f21333b7cc0d";
    revisions = {
      r0 = {
        nix = import ../hackage/ion-1.0.0.0-r0-e55cdf9d235491a5f78537c4630b73bd32fae98c8bffeacc799c271989baf7bd.nix;
        revNum = 0;
        sha256 = "e55cdf9d235491a5f78537c4630b73bd32fae98c8bffeacc799c271989baf7bd";
        };
      r1 = {
        nix = import ../hackage/ion-1.0.0.0-r1-468bd67b256d96d6a7950870abb2c90f98815b759f89658022ece91fe234c3d9.nix;
        revNum = 1;
        sha256 = "468bd67b256d96d6a7950870abb2c90f98815b759f89658022ece91fe234c3d9";
        };
      default = "r1";
      };
    };
  }