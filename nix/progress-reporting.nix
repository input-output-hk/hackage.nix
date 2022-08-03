{
  "1.0.0" = {
    sha256 = "8dddfbd5007871c47e53d01ad3366605679107504f23de568ccde0ed73a633f8";
    revisions = {
      r0 = {
        nix = import ../hackage/progress-reporting-1.0.0-r0-6659325fff2f653bdb7bdb3bd9346ff2059457517802df86aaa2ea7c03d70844.nix;
        revNum = 0;
        sha256 = "6659325fff2f653bdb7bdb3bd9346ff2059457517802df86aaa2ea7c03d70844";
        };
      default = "r0";
      };
    };
  "1.1.0" = {
    sha256 = "72a545a1406cc67b4d33ae68891ad747db15d8efa8819b64e0a434069188410a";
    revisions = {
      r0 = {
        nix = import ../hackage/progress-reporting-1.1.0-r0-845335f3ccdd561f06c1798dea465ceb145e2ffcb620f8ab2fcedd66ecabdf84.nix;
        revNum = 0;
        sha256 = "845335f3ccdd561f06c1798dea465ceb145e2ffcb620f8ab2fcedd66ecabdf84";
        };
      r1 = {
        nix = import ../hackage/progress-reporting-1.1.0-r1-a1d6c6ef4b709b863bf6fdc4d59d26929895459519cb6400872c893879fc40a8.nix;
        revNum = 1;
        sha256 = "a1d6c6ef4b709b863bf6fdc4d59d26929895459519cb6400872c893879fc40a8";
        };
      default = "r1";
      };
    };
  }