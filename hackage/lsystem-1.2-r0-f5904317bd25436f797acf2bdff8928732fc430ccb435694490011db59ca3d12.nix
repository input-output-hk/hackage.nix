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
      identifier = { name = "lsystem"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carliros.g@gmail.com";
      author = "Carlos Gomez";
      homepage = "";
      url = "";
      synopsis = "Paint an L-System Grammar";
      description = "Paint an L-System Grammar";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lsystem" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
            ];
          buildable = true;
          };
        };
      };
    }