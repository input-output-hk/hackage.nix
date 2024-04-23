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
      specVersion = "1.0";
      identifier = { name = "applicative-extras"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Tupil";
      maintainer = "Chris Eidhof <ce+hackage@tupil.com>";
      author = "Chris Eidhof <ce+hackage@tupil.com>";
      homepage = "";
      url = "";
      synopsis = "Instances for Applicative";
      description = "Some instances for Applicative and type-level composition.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }