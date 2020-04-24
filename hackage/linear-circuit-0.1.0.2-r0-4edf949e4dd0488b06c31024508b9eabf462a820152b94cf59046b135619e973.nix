{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "linear-circuit"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/linear-circuit";
      url = "";
      synopsis = "Compute resistance of linear electrical circuits";
      description = "Compute resistance of linear electrical circuits.\n\nFor examples see test directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."lapack" or ((hsPkgs.pkgs-errors).buildDepError "lapack"))
          (hsPkgs."netlib-ffi" or ((hsPkgs.pkgs-errors).buildDepError "netlib-ffi"))
          (hsPkgs."comfort-array" or ((hsPkgs.pkgs-errors).buildDepError "comfort-array"))
          (hsPkgs."comfort-graph" or ((hsPkgs.pkgs-errors).buildDepError "comfort-graph"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "test-linear-circuit" = {
          depends = [
            (hsPkgs."linear-circuit" or ((hsPkgs.pkgs-errors).buildDepError "linear-circuit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."comfort-graph" or ((hsPkgs.pkgs-errors).buildDepError "comfort-graph"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }