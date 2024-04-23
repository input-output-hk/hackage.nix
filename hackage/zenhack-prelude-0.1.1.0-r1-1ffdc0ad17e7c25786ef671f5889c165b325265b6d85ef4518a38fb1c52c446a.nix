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
      specVersion = "2.2";
      identifier = { name = "zenhack-prelude"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2019 Ian Denhardt";
      maintainer = "ian@zenhack.net";
      author = "Ian Denhardt";
      homepage = "https://gitlab.com/isd/custom-haskell-prelude";
      url = "";
      synopsis = "@zenhack's personal custom prelude";
      description = "This is my own custom prelude. It is not intended to be suitable\nfor all projects, but is designed to be an acceptable dependency\nfor any library project, so that I can use it unconditionally. Its\nonly dependency is base, and it just re-exports things from various\nmodules scattered about the base package that I don't want to have\nto import.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }