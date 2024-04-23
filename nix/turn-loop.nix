{
  "0.0.0" = {
    sha256 = "e2141fee41310ddbdf5e6a4e40ebede2f8d99f7471bf5e49d5f00a59b99e6423";
    revisions = {
      r0 = {
        nix = import ../hackage/turn-loop-0.0.0-r0-64ddb957f57633d39686f0e3658c7c381f9a80378acb3d20fa9ceca5a9bac209.nix;
        revNum = 0;
        sha256 = "64ddb957f57633d39686f0e3658c7c381f9a80378acb3d20fa9ceca5a9bac209";
      };
      default = "r0";
    };
  };
  "0.1.0" = {
    sha256 = "8651f0eea08cbf232556f5379ac140075a2ea7baa2a9a24eb084012727bd1ea0";
    revisions = {
      r0 = {
        nix = import ../hackage/turn-loop-0.1.0-r0-7d5a2065774e10034157ae5351636dc4a02965804cb26eb4ad5624ec97a59803.nix;
        revNum = 0;
        sha256 = "7d5a2065774e10034157ae5351636dc4a02965804cb26eb4ad5624ec97a59803";
      };
      default = "r0";
    };
  };
}