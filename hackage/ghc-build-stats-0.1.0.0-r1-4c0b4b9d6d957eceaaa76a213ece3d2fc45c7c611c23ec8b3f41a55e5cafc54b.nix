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
      specVersion = "3.0";
      identifier = { name = "ghc-build-stats"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "ghc-build-stats Contributors";
      maintainer = "teofilcamarasu@gmail.com";
      author = "Teo Camarasu";
      homepage = "";
      url = "";
      synopsis = "A tool for analysing the output of ghc-build-stats-plugin";
      description = "A tool for analysing the output of ghc-build-stats-plugin";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
        ];
        buildable = true;
      };
      exes = {
        "ghc-build-stats" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-build-stats" or (errorHandler.buildDepError "ghc-build-stats"))
          ];
          buildable = true;
        };
      };
    };
  }