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
      specVersion = "1.18";
      identifier = { name = "conferer-hspec"; version = "1.0.0.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2020 Lucas David Traverso";
      maintainer = "lucas6246@gmail.com";
      author = "Lucas David Traverso";
      homepage = "https://conferer.ludat.io";
      url = "";
      synopsis = "conferer's FromConfig instances for hspec Config";
      description = "Library to abstract the parsing of many haskell config values from different config sources";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conferer" or (errorHandler.buildDepError "conferer"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conferer" or (errorHandler.buildDepError "conferer"))
            (hsPkgs."conferer-hspec" or (errorHandler.buildDepError "conferer-hspec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }