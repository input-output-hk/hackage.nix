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
      specVersion = "1.6";
      identifier = { name = "Hashell"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "none";
      author = "Luis Francisco Araujo";
      homepage = "";
      url = "";
      synopsis = "Simple shell written in Haskell";
      description = "A simple shell written in Haskell; through the GHC API, it allows\nevaluation of Haskell expressions.\n\nThis works only with old GHCs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hashell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }