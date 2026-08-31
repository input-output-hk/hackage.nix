{
  "1.0.0.0" = {
    sha256 = "c6007da82cb8375a02e775f2be38b102a5dfc1a27a8c8a6eb900bded41acbd21";
    revisions = {
      r0 = {
        nix = import ../hackage/dataframe-arrow-bridge-1.0.0.0-r0-24026b0978733579b76b1539d34aa48c2278167d9ed167048135a780a6dc4802.nix;
        revNum = 0;
        sha256 = "24026b0978733579b76b1539d34aa48c2278167d9ed167048135a780a6dc4802";
      };
      r1 = {
        nix = import ../hackage/dataframe-arrow-bridge-1.0.0.0-r1-e7025901ce0feb954b98e3d24990b737a7d7cb8911b64b2facc3dde97abd7da0.nix;
        revNum = 1;
        sha256 = "e7025901ce0feb954b98e3d24990b737a7d7cb8911b64b2facc3dde97abd7da0";
      };
      default = "r1";
    };
  };
}