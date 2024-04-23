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
      specVersion = "1.12";
      identifier = { name = "cabal-auto-expose"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Aditya Siram";
      maintainer = "Aditya Siram";
      author = "Aditya Siram";
      homepage = "https://github.com/deech/cabal-auto-expose#readme";
      url = "";
      synopsis = "Build time library that autodetects exposed modules";
      description = "Build time library used with a custom Setup.hs that autodetects exposed modules in the source directories of each build artifact.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
        ];
        buildable = true;
      };
    };
  }