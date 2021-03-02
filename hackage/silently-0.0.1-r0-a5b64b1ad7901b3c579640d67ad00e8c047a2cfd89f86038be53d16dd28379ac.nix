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
      specVersion = "1.0";
      identifier = { name = "silently"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Trystan Spangler 2011";
      maintainer = "trystan.s@comcast.net";
      author = "Trystan Spangler";
      homepage = "https://github.com/trystan/silently";
      url = "https://github.com/trystan/silently";
      synopsis = "Prevent writing to stdout in Haskel.";
      description = "Prevent writing to stdout in Haskel.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
        buildable = true;
        };
      };
    }