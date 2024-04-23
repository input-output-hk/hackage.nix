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
      identifier = { name = "lazyio-applicative"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "profunctorial@protonmail.com";
      author = "Profunctorial";
      homepage = "";
      url = "";
      synopsis = "LazyIO applicative for asymptotic performance regain when effectfully generating structures";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }