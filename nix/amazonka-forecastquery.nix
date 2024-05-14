{
  "2.0" = {
    sha256 = "a7d41bb662e3d1bc04cd5844d424177a75a23c336edb217adb615ecfebbcc161";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-forecastquery-2.0-r0-ed622c6970ca5986e8091cc2796a747e85aeb38f8cd8c70b06d7442a0e4cee1e.nix;
        revNum = 0;
        sha256 = "ed622c6970ca5986e8091cc2796a747e85aeb38f8cd8c70b06d7442a0e4cee1e";
      };
      r1 = {
        nix = import ../hackage/amazonka-forecastquery-2.0-r1-0af185de57d94a663d822c085072a897700676be1e4c1ddc92b654112917d416.nix;
        revNum = 1;
        sha256 = "0af185de57d94a663d822c085072a897700676be1e4c1ddc92b654112917d416";
      };
      default = "r1";
    };
  };
}