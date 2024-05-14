{
  "2.0" = {
    sha256 = "db4634c2bb95834e41b0cd08248951bd7520a2634eb76feb02972a8a931d2191";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-codeartifact-2.0-r0-d7fc1f6f7dee0cddccc2085e84bac621c509c9451fff434d81e503cfbb30ee19.nix;
        revNum = 0;
        sha256 = "d7fc1f6f7dee0cddccc2085e84bac621c509c9451fff434d81e503cfbb30ee19";
      };
      r1 = {
        nix = import ../hackage/amazonka-codeartifact-2.0-r1-6f3f96de9481c1113db53021ca970c56f203807b49958719fe0ca76533284dde.nix;
        revNum = 1;
        sha256 = "6f3f96de9481c1113db53021ca970c56f203807b49958719fe0ca76533284dde";
      };
      default = "r1";
    };
  };
}