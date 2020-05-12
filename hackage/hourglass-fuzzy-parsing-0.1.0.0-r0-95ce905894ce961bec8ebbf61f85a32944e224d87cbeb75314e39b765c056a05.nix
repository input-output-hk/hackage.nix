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
      specVersion = "1.8";
      identifier = { name = "hourglass-fuzzy-parsing"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tanner Doshier <doshitan@gmail.com>";
      author = "IlyaPortnov, Tanner Doshier <doshitan@gmail.com>";
      homepage = "https://gitlab.com/doshitan/hourglass-fuzzy-parsing";
      url = "";
      synopsis = "A small library for parsing more human friendly date/time formats.";
      description = "This package parses many different date/time formats.\nBoth absolute and relative dates are supported. See the\nREADME for more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }