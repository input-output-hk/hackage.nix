{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chimera"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2018 Bodigrim";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Bodigrim";
      homepage = "https://github.com/Bodigrim/chimera#readme";
      url = "";
      synopsis = "Lazy, infinite streams with O(1) indexing.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
        buildable = true;
        };
      exes = {
        "find-foo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chimera" or ((hsPkgs.pkgs-errors).buildDepError "chimera"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chimera" or ((hsPkgs.pkgs-errors).buildDepError "chimera"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chimera" or ((hsPkgs.pkgs-errors).buildDepError "chimera"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            ];
          buildable = true;
          };
        };
      };
    }