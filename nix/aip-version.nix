{
  "0.0.0.1" = {
    sha256 = "535950744ba8f1750f3749238dd506b60a9baf977cc2f2d6be597f0c1e331c66";
    revisions = {
      r0 = {
        nix = import ../hackage/aip-version-0.0.0.1-r0-1a1b7ae528302a8f012161563ca09262f6a1a650cffce19859603ac4a3eb6121.nix;
        revNum = 0;
        sha256 = "1a1b7ae528302a8f012161563ca09262f6a1a650cffce19859603ac4a3eb6121";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "a5e0b0285e0a5e679d0637311a23ab09bb93d042cb38b6ad410fc719d95e8d3d";
    revisions = {
      r0 = {
        nix = import ../hackage/aip-version-0.0.0.2-r0-37dff63530f10ffdc9e0e9351c3567f3faf971ff642d7068f589f4e48567ac59.nix;
        revNum = 0;
        sha256 = "37dff63530f10ffdc9e0e9351c3567f3faf971ff642d7068f589f4e48567ac59";
      };
      default = "r0";
    };
  };
}