{
  "0.0.1.0" = {
    sha256 = "ccfc3e7b2521d37cc5ae570e6a1e87b4b84dc45b5683aba1b07dbad5d212592d";
    revisions = {
      r0 = {
        nix = import ../hackage/waiz-0.0.1.0-r0-488f821995d6547bc2671c0858f50f9205f952d9c685f34ca70a8f820127ec36.nix;
        revNum = 0;
        sha256 = "488f821995d6547bc2671c0858f50f9205f952d9c685f34ca70a8f820127ec36";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "72fcd4c18882add01a4f8f0c0133c67e5745257bdd488584e7079c8588913f77";
    revisions = {
      r0 = {
        nix = import ../hackage/waiz-0.0.2.0-r0-15b49ab98f724dae4f93d7ed0663267f5f6f468f9babd24c30fdc26b4a483284.nix;
        revNum = 0;
        sha256 = "15b49ab98f724dae4f93d7ed0663267f5f6f468f9babd24c30fdc26b4a483284";
      };
      default = "r0";
    };
  };
}