{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "LinearSplit"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "virukav@gmail.com";
      author = "Vitaliy Rukavishnikov";
      homepage = "http://github.com/rukav/LinearSplit";
      url = "";
      synopsis = "Partition the sequence of items to the subsequences in the order given";
      description = "The LinearSplit module implements partitioning the sequence of items to the\nsubsequences in the order given. The items can be splitted using greedy\nheuristic or using linear partition algorithm to minimize the maximum cost\nover all ranges (see the 'The Algorithm Design Manual' by Steven S. Skiena..)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ];
        buildable = true;
        };
      };
    }