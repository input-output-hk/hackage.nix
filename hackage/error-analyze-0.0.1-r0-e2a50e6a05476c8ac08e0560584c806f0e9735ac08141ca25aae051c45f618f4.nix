{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "error-analyze"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jp@moresmau.fr";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Parse ghc and cabal error messages and give their causes for easier resolution";
      description = "Parse ghc and cabal error messages and give their causes for easier resolution.\n\nJust pass the error message to 'errorCauses' and get a list of possible explanations/resolutions ('ErrorCause')\n\nCheck the test suite for examples.\n\nThis functionality was originally developed in Java as part of EclipseFP but was rewritten\nin Haskell in the hope it can be useful to other IDE tools or GHC library wrappers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test-error-analyze" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."error-analyze" or ((hsPkgs.pkgs-errors).buildDepError "error-analyze"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }