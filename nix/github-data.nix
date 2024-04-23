{
  "0.18" = {
    sha256 = "b7c4685545354b66c1c7074b5435476f831fe6e58827b65ef0ab93cf109716e7";
    revisions = {
      r0 = {
        nix = import ../hackage/github-data-0.18-r0-8b80ea0934e35e06f5282b272105ea8853d68281d6a29b17b40b69f10ebaafa5.nix;
        revNum = 0;
        sha256 = "8b80ea0934e35e06f5282b272105ea8853d68281d6a29b17b40b69f10ebaafa5";
      };
      r1 = {
        nix = import ../hackage/github-data-0.18-r1-6f69bd26809a83b4217b08d1c477c1e39aa693eea9c76fb4ff4fea4a5737ede1.nix;
        revNum = 1;
        sha256 = "6f69bd26809a83b4217b08d1c477c1e39aa693eea9c76fb4ff4fea4a5737ede1";
      };
      default = "r1";
    };
  };
}