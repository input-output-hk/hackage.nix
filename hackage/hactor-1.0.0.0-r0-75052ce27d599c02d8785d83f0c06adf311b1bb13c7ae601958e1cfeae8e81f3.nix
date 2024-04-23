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
      specVersion = "1.20";
      identifier = { name = "hactor"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Copyright Forkk 2014";
      maintainer = "forkk@forkk.net";
      author = "Forkk";
      homepage = "https://github.com/Forkk/hactor";
      url = "";
      synopsis = "Lightweight Erlang-style actors for Haskell.";
      description = "Hactor is a library which aims to provide lightweight Erlang-style actors for Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }