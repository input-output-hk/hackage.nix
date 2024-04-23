{
  "0.1.0.0" = {
    sha256 = "911ada4f32549d379856e99615c62afaab869d3a7d709b465fe61c0f0cc2a998";
    revisions = {
      r0 = {
        nix = import ../hackage/tahoe-directory-0.1.0.0-r0-ca00b06624f293ecf129895ea793c551a388be245466df35e3276d33265b8962.nix;
        revNum = 0;
        sha256 = "ca00b06624f293ecf129895ea793c551a388be245466df35e3276d33265b8962";
      };
      r1 = {
        nix = import ../hackage/tahoe-directory-0.1.0.0-r1-a9f959d311825b932e7045c5bda3bc97735a98b0c96b0cd2406caaa95c96ed38.nix;
        revNum = 1;
        sha256 = "a9f959d311825b932e7045c5bda3bc97735a98b0c96b0cd2406caaa95c96ed38";
      };
      default = "r1";
    };
  };
}