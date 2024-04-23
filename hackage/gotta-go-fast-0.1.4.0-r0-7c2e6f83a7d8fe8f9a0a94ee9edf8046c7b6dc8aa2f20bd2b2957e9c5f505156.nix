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
      identifier = { name = "gotta-go-fast"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "c.oakley108@gmail.com";
      author = "Callum Oakley";
      homepage = "https://github.com/hot-leaf-juice/gotta-go-fast";
      url = "";
      synopsis = "A command line utility for practicing typing";
      description = "A command line utility for practicing typing and measuring your WPM and accuracy. See the project <https://github.com/hot-leaf-juice/gotta-go-fast/blob/master/README.md README> for details.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gotta-go-fast" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."word-wrap" or (errorHandler.buildDepError "word-wrap"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
          buildable = true;
        };
      };
    };
  }