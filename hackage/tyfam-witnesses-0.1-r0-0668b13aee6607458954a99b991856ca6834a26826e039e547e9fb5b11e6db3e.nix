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
      identifier = { name = "tyfam-witnesses"; version = "0.1"; };
      license = "MIT";
      copyright = "© Gabor Greif, 2017";
      maintainer = "ggreif+tyfam@gmail.com";
      author = "Gabor Greif";
      homepage = "";
      url = "";
      synopsis = "Provide proof witnesses for closed type family evaluation";
      description = "Template Haskell routine for generating from type family 'Foo'\n\n[@FooRefl@]: a GADT capturing the equalities of each type family clause\n[@reify_Foo@]: a function that analyses 'TypeRep's and reifies the matching clause as a 'FooRefl'\n\nNote that 'Type.Reflection' is new with GHC v8.2!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }