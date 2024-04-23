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
      identifier = { name = "NameGenerator"; version = "0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "pommicket@gmail.com";
      author = "pommicket";
      homepage = "http://github.com/pommicket/name-generator-haskell";
      url = "";
      synopsis = "A name generator written in Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }