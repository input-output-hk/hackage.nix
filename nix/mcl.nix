{
  "1.0.0" = {
    sha256 = "bc5d6a2f6075351bc1f2a432535f4cb712f9803f6c35f7af13384745dbb20af1";
    revisions = {
      r0 = {
        nix = import ../hackage/mcl-1.0.0-r0-deced3506dfcb84371339ee6a23edf175077f2fd6a1111a9fa028d3690dc524c.nix;
        revNum = 0;
        sha256 = "deced3506dfcb84371339ee6a23edf175077f2fd6a1111a9fa028d3690dc524c";
        };
      r1 = {
        nix = import ../hackage/mcl-1.0.0-r1-83f5ffc7a7dc60864fe53641b859426c5865b6044e788720fd9d7df30be448d2.nix;
        revNum = 1;
        sha256 = "83f5ffc7a7dc60864fe53641b859426c5865b6044e788720fd9d7df30be448d2";
        };
      default = "r1";
      };
    };
  "1.0.1" = {
    sha256 = "53351bcdb0628d2a1081118f132624c9b3926b41f0de19dc1896db7607ebc957";
    revisions = {
      r0 = {
        nix = import ../hackage/mcl-1.0.1-r0-02a6819febe104926b5ddd767ce57adbd77dd3e24938f48af04f2515b2bcc979.nix;
        revNum = 0;
        sha256 = "02a6819febe104926b5ddd767ce57adbd77dd3e24938f48af04f2515b2bcc979";
        };
      default = "r0";
      };
    };
  }