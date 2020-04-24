{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-strict = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "data-r-tree"; version = "0.0.5.0"; };
      license = "MIT";
      copyright = "Sebastian Philipp, Birte Wagner";
      maintainer = "sebastian@spawnhost.de";
      author = "Sebastian Philipp, Birte Wagner";
      homepage = "https://github.com/sebastian-philipp/r-tree";
      url = "";
      synopsis = "R-Tree is a spatial data structure similar to Quadtrees or B-Trees.";
      description = "R-Tree is a spatial data structure similar to Quadtrees or B-Trees.\nAn R-Tree is a balanced tree and optimized for lookups. This implemetation useses an R-Tree to privide\na map to arbitrary values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."data-r-tree" or ((hsPkgs.pkgs-errors).buildDepError "data-r-tree"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        "strict" = {
          depends = (pkgs.lib).optionals (!(!flags.test-strict)) [
            (hsPkgs."data-r-tree" or ((hsPkgs.pkgs-errors).buildDepError "data-r-tree"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."ghc-heap-view" or ((hsPkgs.pkgs-errors).buildDepError "ghc-heap-view"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = if !flags.test-strict then false else true;
          };
        };
      };
    }