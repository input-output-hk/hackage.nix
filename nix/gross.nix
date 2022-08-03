{
  "0.0.0.0" = {
    sha256 = "5d9af8583c00c0af8800562cadc81203e8043335ab7dd4211a90a211f6889396";
    revisions = {
      r0 = {
        nix = import ../hackage/gross-0.0.0.0-r0-88f019e4d69ce8d95938f4cce1e94d2460d49698e8d7b967cda336e19040ede9.nix;
        revNum = 0;
        sha256 = "88f019e4d69ce8d95938f4cce1e94d2460d49698e8d7b967cda336e19040ede9";
        };
      r1 = {
        nix = import ../hackage/gross-0.0.0.0-r1-2a128f172de2d4fc0a7c05d48b40aa84b845956a5eed51c50fef36183f599bb4.nix;
        revNum = 1;
        sha256 = "2a128f172de2d4fc0a7c05d48b40aa84b845956a5eed51c50fef36183f599bb4";
        };
      default = "r1";
      };
    };
  "0.1.0.0" = {
    sha256 = "76468df752590a960a9132da267d42d040d5fff58530ac7783642c818d95783c";
    revisions = {
      r0 = {
        nix = import ../hackage/gross-0.1.0.0-r0-bf64884a284d09c15f016350f7e14e180bebe86aa8eff8ee1c99be9516a54cbd.nix;
        revNum = 0;
        sha256 = "bf64884a284d09c15f016350f7e14e180bebe86aa8eff8ee1c99be9516a54cbd";
        };
      default = "r0";
      };
    };
  }