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
      identifier = { name = "atuin"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eb@cs.st-andrews.ac.uk";
      author = "Edwin Brady";
      homepage = "http://www.dcs.st-and.ac.uk/~eb/epic.php";
      url = "";
      synopsis = "Embedded Turtle language compiler in Haskell, with Epic output";
      description = "This language is a demonstration of the Epic compiler API.\nIt is a dynamically typed language with higher order\nfunctions and system interaction (specifically graphics).\nRequires SDL and SDL_gfx libraries, and their C headers.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "atuin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."epic" or (errorHandler.buildDepError "epic"))
          ];
          buildable = true;
        };
      };
    };
  }