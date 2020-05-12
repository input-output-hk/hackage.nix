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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "STMonadTrans"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "josef.svenningsson@gmail.com";
      author = "Josef Svenningsson";
      homepage = "";
      url = "";
      synopsis = "A monad transformer version of the ST monad";
      description = "A monad transformer version of the ST monad";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }