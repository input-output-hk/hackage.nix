{
  "0.1.0.0" = {
    sha256 = "9e52811b002d5c71b537d62ac6a899b665d97d39ea45585ac59a0197185bb8ee";
    revisions = {
      r0 = {
        nix = import ../hackage/svgone-0.1.0.0-r0-f111832149e3d704d2697546c0573fc18d64dd255f13cb507c27bf2e5d7e5c88.nix;
        revNum = 0;
        sha256 = "f111832149e3d704d2697546c0573fc18d64dd255f13cb507c27bf2e5d7e5c88";
      };
      r1 = {
        nix = import ../hackage/svgone-0.1.0.0-r1-cc1f9b0ca025285549535b6b2b5e958b9117c22ccee03b2ddb9d971315327112.nix;
        revNum = 1;
        sha256 = "cc1f9b0ca025285549535b6b2b5e958b9117c22ccee03b2ddb9d971315327112";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "65dc92612eb2358b9652b9b424d006e6e6928835ecdd2e8374bfaa52ca3727e4";
    revisions = {
      r0 = {
        nix = import ../hackage/svgone-0.2.0.0-r0-e791efb2dccc8e47f7ac041e572f331e5aa9383c51e47a2da265c9abcd36f1c6.nix;
        revNum = 0;
        sha256 = "e791efb2dccc8e47f7ac041e572f331e5aa9383c51e47a2da265c9abcd36f1c6";
      };
      default = "r0";
    };
  };
  "0.2.0.1" = {
    sha256 = "eedb2433ae6707a4b057692d2ce78e5d19999aabc7bfc6807ec000400939d13d";
    revisions = {
      r0 = {
        nix = import ../hackage/svgone-0.2.0.1-r0-d90cde93c732d60d19fcedadb9fc93095e16b7806876a989197224df36eb96e7.nix;
        revNum = 0;
        sha256 = "d90cde93c732d60d19fcedadb9fc93095e16b7806876a989197224df36eb96e7";
      };
      default = "r0";
    };
  };
  "0.2.0.2" = {
    sha256 = "67de532006ec3e7d56d2b7c0b2e09671b03598813bba94e941f94f74b3d2dc45";
    revisions = {
      r0 = {
        nix = import ../hackage/svgone-0.2.0.2-r0-43f24b81475e7e6f61ca8b99c418d35757cd603d22e972dc185fa0909c91fc37.nix;
        revNum = 0;
        sha256 = "43f24b81475e7e6f61ca8b99c418d35757cd603d22e972dc185fa0909c91fc37";
      };
      default = "r0";
    };
  };
}