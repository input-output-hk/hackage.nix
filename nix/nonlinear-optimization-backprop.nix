{
  "0.2.4" = {
    sha256 = "182e1e4bcf3e2875640614c80f81ee7dbbc811030948c003d290e422ea31f148";
    revisions = {
      r0 = {
        nix = import ../hackage/nonlinear-optimization-backprop-0.2.4-r0-2c489c5c8b0ace0d3ac408863e463e93a58df1b39dc734c411dcda4959445540.nix;
        revNum = 0;
        sha256 = "2c489c5c8b0ace0d3ac408863e463e93a58df1b39dc734c411dcda4959445540";
      };
      r1 = {
        nix = import ../hackage/nonlinear-optimization-backprop-0.2.4-r1-ac14a0dd442ebd98a2743b5c744248bbcc84ac86af8020df1bbf1f86012603d8.nix;
        revNum = 1;
        sha256 = "ac14a0dd442ebd98a2743b5c744248bbcc84ac86af8020df1bbf1f86012603d8";
      };
      default = "r1";
    };
  };
}