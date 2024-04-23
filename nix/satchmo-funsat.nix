{
  "1.3" = {
    sha256 = "69ffac63c5387dcccefdc57fe656eaee56421cbc24c172bbe3b63f1e3265cf6f";
    revisions = {
      r0 = {
        nix = import ../hackage/satchmo-funsat-1.3-r0-25ed42d96f5b25fc4bd1d31bdae91c8ed23bb4d9abfb938492499138d6111a7d.nix;
        revNum = 0;
        sha256 = "25ed42d96f5b25fc4bd1d31bdae91c8ed23bb4d9abfb938492499138d6111a7d";
      };
      default = "r0";
    };
  };
  "1.4" = {
    sha256 = "64ec9531d40ed196831021904576697929d43f8f752a044c6bb031ce17eda05b";
    revisions = {
      r0 = {
        nix = import ../hackage/satchmo-funsat-1.4-r0-d3a0d185a934ae02c3cac7225a83e300e15fb58af4e34719a53222f4bde9fcd4.nix;
        revNum = 0;
        sha256 = "d3a0d185a934ae02c3cac7225a83e300e15fb58af4e34719a53222f4bde9fcd4";
      };
      default = "r0";
    };
  };
}