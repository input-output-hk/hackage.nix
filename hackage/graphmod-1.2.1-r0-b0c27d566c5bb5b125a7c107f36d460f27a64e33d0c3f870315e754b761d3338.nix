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
      identifier = { name = "graphmod"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "http://github.com/yav/graphmod";
      url = "";
      synopsis = "Present the module dependencies of a program as a \"dot\" graph.";
      description = "This package contains a program that can compute \"dot\" graphs\nfrom the dependencies between a number of Haskell modules.";
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
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }