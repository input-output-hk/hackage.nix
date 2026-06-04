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
      identifier = { name = "ghc-build-stats-plugin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "ghc-build-stats Contributors";
      maintainer = "teofilcamarasu@gmail.com";
      author = "Teo Camarasu";
      homepage = "";
      url = "";
      synopsis = "A plugin for collecting GHC build statistics";
      description = "A plugin for collecting GHC build statistics";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
    };
  }