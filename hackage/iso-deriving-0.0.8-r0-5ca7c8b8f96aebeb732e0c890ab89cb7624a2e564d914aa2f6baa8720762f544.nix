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
    flags = { strict = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "iso-deriving"; version = "0.0.8"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hans Hoeglund <hans.hoeglund@tweag.io>";
      author = "Hans Hoeglund";
      homepage = "";
      url = "";
      synopsis = "Deriving via arbitrary isomorphisms.";
      description = "The GHC extension DerivingVia allow derivation through a specific morphism:\ncoerce. This library helps generalizing DerivingVia to arbitrary morphisms.\nThis is particularly useful for prototypes and specifications of instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
        buildable = true;
        };
      tests = {
        "iso-deriving-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."iso-deriving" or (errorHandler.buildDepError "iso-deriving"))
            ];
          buildable = true;
          };
        };
      };
    }