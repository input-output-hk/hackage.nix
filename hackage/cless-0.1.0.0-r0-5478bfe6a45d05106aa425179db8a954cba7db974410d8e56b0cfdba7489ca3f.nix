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
      identifier = { name = "cless"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Hideyuki Tanaka";
      maintainer = "tanaka.hideyuki@gmail.com";
      author = "Hideyuki Tanaka";
      homepage = "https://github.com/tanakh/cless";
      url = "";
      synopsis = "Colorized LESS";
      description = "Print file contents with syntax highlighting";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cless" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
            (hsPkgs."wl-pprint-terminfo" or (errorHandler.buildDepError "wl-pprint-terminfo"))
            (hsPkgs."wl-pprint-extras" or (errorHandler.buildDepError "wl-pprint-extras"))
            (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }