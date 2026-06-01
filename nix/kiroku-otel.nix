{
  "0.1.0.0" = {
    sha256 = "60f5646c9cbe246bf79c2ea681b6479832638c5504eb1015ed734a9f64097e19";
    revisions = {
      r0 = {
        nix = import ../hackage/kiroku-otel-0.1.0.0-r0-1eff3c8cc183a4f711887725e60d6e95198b9b734691a96c8292573ce6455e94.nix;
        revNum = 0;
        sha256 = "1eff3c8cc183a4f711887725e60d6e95198b9b734691a96c8292573ce6455e94";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "fabdb4f4f1ed461c9bb99e96e4f493207a5c41411431c4443b955f2791165dd8";
    revisions = {
      r0 = {
        nix = import ../hackage/kiroku-otel-0.2.0.0-r0-11100e7035e71345381ca0f1dc6df69e890e744ea0e37eca2964ffa6b2c42ca0.nix;
        revNum = 0;
        sha256 = "11100e7035e71345381ca0f1dc6df69e890e744ea0e37eca2964ffa6b2c42ca0";
      };
      default = "r0";
    };
  };
}