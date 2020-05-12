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
      identifier = { name = "SFont"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor-Davis";
      homepage = "";
      url = "";
      synopsis = "SFont SDL Bitmap Fonts";
      description = "A haskell port of Karl Bartel's bitmap SFont library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
          (hsPkgs."Sprig" or (errorHandler.buildDepError "Sprig"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }