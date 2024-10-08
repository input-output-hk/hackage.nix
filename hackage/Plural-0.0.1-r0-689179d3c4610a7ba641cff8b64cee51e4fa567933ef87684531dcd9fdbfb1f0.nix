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
      identifier = { name = "Plural"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 Andy Stewart";
      maintainer = "lazycat.manatee@gmail.com";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Pluralize English words";
      description = "Pluralize English words";
      buildType = "Simple";
    };
    components = {
      exes = {
        "plural" = {
          depends = [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }