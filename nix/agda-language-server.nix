{
  "0.0.3.0" = {
    sha256 = "1b75ffd1f3a6f9248788742e25c0cb797b9a1a45a67f9d2966daea94078a56ea";
    revisions = {
      r0 = {
        nix = import ../hackage/agda-language-server-0.0.3.0-r0-597c738a930f2895ed0fd8f055ca860c259d74dadaa67318fb96e17ac5d4effb.nix;
        revNum = 0;
        sha256 = "597c738a930f2895ed0fd8f055ca860c259d74dadaa67318fb96e17ac5d4effb";
        };
      default = "r0";
      };
    };
  "0.2.0" = {
    sha256 = "5866ae8ac031fa1ee9073b64830fcb28c5a48324b65a63ec0c12b71795322997";
    revisions = {
      r0 = {
        nix = import ../hackage/agda-language-server-0.2.0-r0-4b7730633f7e5b1f3e242038d535c7a3bacc62037492d07220dd4a082c8579a3.nix;
        revNum = 0;
        sha256 = "4b7730633f7e5b1f3e242038d535c7a3bacc62037492d07220dd4a082c8579a3";
        };
      default = "r0";
      };
    };
  "0.2.1" = {
    sha256 = "20ec24dfd7d7f6f74942615bd5edbbc6641648dc5a41820bc9fdef24cb87fda7";
    revisions = {
      r0 = {
        nix = import ../hackage/agda-language-server-0.2.1-r0-ea651b19ea29455c1ecd2359764fb9c83cd9e04094cf4d94241ae4e650672815.nix;
        revNum = 0;
        sha256 = "ea651b19ea29455c1ecd2359764fb9c83cd9e04094cf4d94241ae4e650672815";
        };
      r1 = {
        nix = import ../hackage/agda-language-server-0.2.1-r1-3ff5bf0e61f1424797ec66115d2be5db502f05b3e8a4530338402833f61a357e.nix;
        revNum = 1;
        sha256 = "3ff5bf0e61f1424797ec66115d2be5db502f05b3e8a4530338402833f61a357e";
        };
      default = "r1";
      };
    };
  }