{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nix-eval"; version = "0.1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "chriswarbo@gmail.com";
      author = "Chris Warburton";
      homepage = "http://chriswarbo.net/git/nix-eval";
      url = "";
      synopsis = "Evaluate Haskell expressions using Nix to get packages";
      description = "Evaluate Haskell expressions using Nix to get packages";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."nix-eval" or (errorHandler.buildDepError "nix-eval"))
            ];
          buildable = true;
          };
        };
      };
    }