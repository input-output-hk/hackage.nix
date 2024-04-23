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
      specVersion = "1.12";
      identifier = { name = "simplistic-generics"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trupill@gmail.com and v.cacciarimiraldo@gmail.com";
      author = "Alejandro Serrano and Victor Miraldo";
      homepage = "";
      url = "";
      synopsis = "Generic programming without too many type classes";
      description = "This library provides a representation build on top of `GHC.Generics`, which can be used to describe generic operations on a single function, instead of having each case defined in an instance of a type class.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."kind-apply" or (errorHandler.buildDepError "kind-apply"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }