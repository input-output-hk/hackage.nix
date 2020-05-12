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
      specVersion = "1.2";
      identifier = { name = "graphmod"; version = "1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "http://github.com/yav/graphmod";
      url = "";
      synopsis = "Present the module dependecies of a program as a \"dot\" graph.";
      description = "This package contains a program that can compute \"dot\" grpahs\nfrom the dependecies between a number of Haskell modules.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "graphmod" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."dotgen" or (errorHandler.buildDepError "dotgen"))
            (hsPkgs."haskell-lexer" or (errorHandler.buildDepError "haskell-lexer"))
            ];
          buildable = true;
          };
        };
      };
    }