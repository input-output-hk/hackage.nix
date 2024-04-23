{
  "0.1" = {
    sha256 = "d537d12213f573afc1c29c8ceda1a8a968de46b65a6c0903f78900dfeaf57708";
    revisions = {
      r0 = {
        nix = import ../hackage/rosezipper-0.1-r0-27d3b7c84257fda16395636e45f8b83013ebaade4ca07630ad0b482b392ed95c.nix;
        revNum = 0;
        sha256 = "27d3b7c84257fda16395636e45f8b83013ebaade4ca07630ad0b482b392ed95c";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "6cab4f1c192cc3b8b0a9eb11a32780d235020a539a0e91125eed5ec590bad7bc";
    revisions = {
      r0 = {
        nix = import ../hackage/rosezipper-0.2-r0-aeff4e712360c5665747905381982a0765ba2c3831e352e8caeb951fc8c107b7.nix;
        revNum = 0;
        sha256 = "aeff4e712360c5665747905381982a0765ba2c3831e352e8caeb951fc8c107b7";
      };
      default = "r0";
    };
  };
}