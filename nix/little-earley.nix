{
  "0.1.0.0" = {
    sha256 = "0896fd3bcbc1c8c1d9008a7979aaea290c7d92d6cdc023d7359cbdd2e643d8cf";
    revisions = {
      r0 = {
        nix = import ../hackage/little-earley-0.1.0.0-r0-e38d1fab26014230fc80db97958e2ee6b02b71d33360ea014cd5c3830a8209fe.nix;
        revNum = 0;
        sha256 = "e38d1fab26014230fc80db97958e2ee6b02b71d33360ea014cd5c3830a8209fe";
        };
      default = "r0";
      };
    };
  "0.2.0.0" = {
    sha256 = "ba12a2543dfdc49d56d9a427c3a93132a293a864e9f552de81a21a1ea4b2147f";
    revisions = {
      r0 = {
        nix = import ../hackage/little-earley-0.2.0.0-r0-26e64de4c042902ba1f3a7eb827e7926904cc6e5ea18786649fc2c723b4c39cc.nix;
        revNum = 0;
        sha256 = "26e64de4c042902ba1f3a7eb827e7926904cc6e5ea18786649fc2c723b4c39cc";
        };
      r1 = {
        nix = import ../hackage/little-earley-0.2.0.0-r1-ab46bbfb9641b6a5c850c7b3cd369d00e04752b5deb37f5b496cb00937feb75c.nix;
        revNum = 1;
        sha256 = "ab46bbfb9641b6a5c850c7b3cd369d00e04752b5deb37f5b496cb00937feb75c";
        };
      default = "r1";
      };
    };
  }