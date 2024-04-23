{
  "0.1" = {
    sha256 = "b5f00a65dcc190b8685a0e203cc98f0433593e895dd664cfeaf31806adf0cc79";
    revisions = {
      r0 = {
        nix = import ../hackage/url-generic-0.1-r0-a94eba1e2a4b82f781a8a2311d24d2f1b0678f5af3184fac8c44a16c3cff90a0.nix;
        revNum = 0;
        sha256 = "a94eba1e2a4b82f781a8a2311d24d2f1b0678f5af3184fac8c44a16c3cff90a0";
      };
      r1 = {
        nix = import ../hackage/url-generic-0.1-r1-d9926e2ce6433a73b2ba940d476f7046890752c8a1145b42a78561e8d3ff6fb9.nix;
        revNum = 1;
        sha256 = "d9926e2ce6433a73b2ba940d476f7046890752c8a1145b42a78561e8d3ff6fb9";
      };
      default = "r1";
    };
  };
}