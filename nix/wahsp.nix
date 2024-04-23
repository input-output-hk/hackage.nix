{
  "0.2" = {
    sha256 = "e634e0743dbbf93f2dffc68b68a8cc86a7ee3b62a044932f192c5f491e81fe74";
    revisions = {
      r0 = {
        nix = import ../hackage/wahsp-0.2-r0-4867d3b4864b87b737a09536a219fe19a2e9067dcbffed1444353c369765a82b.nix;
        revNum = 0;
        sha256 = "4867d3b4864b87b737a09536a219fe19a2e9067dcbffed1444353c369765a82b";
      };
      r1 = {
        nix = import ../hackage/wahsp-0.2-r1-145ecbcceca09e635f744466b1d439a6144cd83e3d0c74a2478e4470bbffbacd.nix;
        revNum = 1;
        sha256 = "145ecbcceca09e635f744466b1d439a6144cd83e3d0c74a2478e4470bbffbacd";
      };
      default = "r1";
    };
  };
}