{
  "0.1.0" = {
    sha256 = "9c73cd9680b7175d79a05266d0e2d18ce41b0268c25109b8d1708e03a710908b";
    revisions = {
      r0 = {
        nix = import ../hackage/stacked-0.1.0-r0-9244c10b2e44e1cc09a50817f887ebaca4b03006bbc9c8b2ff66d89478822aaf.nix;
        revNum = 0;
        sha256 = "9244c10b2e44e1cc09a50817f887ebaca4b03006bbc9c8b2ff66d89478822aaf";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "f17d51be6bd4da5025ec6f53da824c0f222bc506bf0e7a3c5e24f346d7337b04";
    revisions = {
      r0 = {
        nix = import ../hackage/stacked-0.1.1-r0-b0ba82ef877671353f77ff18165015dd16aef28c238477749ea902dff3b11bfd.nix;
        revNum = 0;
        sha256 = "b0ba82ef877671353f77ff18165015dd16aef28c238477749ea902dff3b11bfd";
      };
      default = "r0";
    };
  };
}