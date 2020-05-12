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
      identifier = { name = "generics-mrsop"; version = "2.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Victor Miraldo <v.cacciarimiraldo@gmail.com>";
      author = "Victor Miraldo and Alejandro Serrano";
      homepage = "https://github.com/VictorCMiraldo/generics-mrsop#readme";
      url = "";
      synopsis = "Generic Programming with Mutually Recursive Sums of Products.";
      description = "A library that supports generic programming for mutually recursive families in the sum-of-products style. . A couple usage examples can be found under \"Generics.MRSOP.Examples\" .";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }