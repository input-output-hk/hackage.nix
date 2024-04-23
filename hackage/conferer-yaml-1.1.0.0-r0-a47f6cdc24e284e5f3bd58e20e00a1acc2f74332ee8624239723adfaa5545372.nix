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
      identifier = { name = "conferer-yaml"; version = "1.1.0.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2020 Lucas David Traverso";
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
          (hsPkgs."conferer-aeson" or (errorHandler.buildDepError "conferer-aeson"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conferer" or (errorHandler.buildDepError "conferer"))
            (hsPkgs."conferer-aeson" or (errorHandler.buildDepError "conferer-aeson"))
            (hsPkgs."conferer-yaml" or (errorHandler.buildDepError "conferer-yaml"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
    };
  }