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
      identifier = { name = "hasktags"; version = "0.68"; };
      license = "BSD-3-Clause";
      copyright = "The University Court of the University of Glasgow";
      maintainer = "Marc Weber <marco-oweber@gmx.de>";
      author = "The GHC Team";
      homepage = "";
      url = "";
      synopsis = "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs";
      description = "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hasktags" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }