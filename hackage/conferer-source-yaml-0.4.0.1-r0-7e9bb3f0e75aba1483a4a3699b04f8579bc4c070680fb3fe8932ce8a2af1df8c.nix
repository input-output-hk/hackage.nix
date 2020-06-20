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
      identifier = { name = "conferer-source-yaml"; version = "0.4.0.1"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "lucas6246@gmail.com";
      author = "Lucas David Traverso";
      homepage = "https://conferer.ludat.io";
      url = "";
      synopsis = "Configuration for reading yaml files";
      description = "Library to abstract the parsing of many haskell config values from different config sources";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conferer" or (errorHandler.buildDepError "conferer"))
          (hsPkgs."conferer-source-json" or (errorHandler.buildDepError "conferer-source-json"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conferer" or (errorHandler.buildDepError "conferer"))
            (hsPkgs."conferer-source-json" or (errorHandler.buildDepError "conferer-source-json"))
            (hsPkgs."conferer-source-yaml" or (errorHandler.buildDepError "conferer-source-yaml"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }