{
  "1.0.0.0" = {
    sha256 = "1d6f2fa0bc473ca32a3a33aa9c49828e8041a938b8381d735216acec3fe482f9";
    revisions = {
      r0 = {
        nix = import ../hackage/ssh-tunnel-1.0.0.0-r0-aca3735c9b7a04409ba51e319d2e579fa45034256d109bc7d32e6961f918e4cf.nix;
        revNum = 0;
        sha256 = "aca3735c9b7a04409ba51e319d2e579fa45034256d109bc7d32e6961f918e4cf";
        };
      r1 = {
        nix = import ../hackage/ssh-tunnel-1.0.0.0-r1-a91ed6a37612a4985e3ab6db1b65294c274d5bc4a77a70958332922daeb0069a.nix;
        revNum = 1;
        sha256 = "a91ed6a37612a4985e3ab6db1b65294c274d5bc4a77a70958332922daeb0069a";
        };
      default = "r1";
      };
    };
  }