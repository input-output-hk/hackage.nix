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
      specVersion = "0";
      identifier = { name = "Flippi"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Philippa Cowderoy <flippa@flippac.org>";
      author = "Philippa Cowderoy";
      homepage = "http://www.flippac.org/projects/flippi/";
      url = "";
      synopsis = "Wiki";
      description = "Flippi is a Wiki clone written in Haskell";
      buildType = "Simple";
      };
    components = {
      exes = {
        "flippi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }