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
      identifier = {
        name = "Shpadoinkle-backend-pardiff";
        version = "0.0.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fresheyeball@protonmail.com";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "A Virtual Dom in pure Haskell, based on Html as an Alignable Functor.";
      description = "Virtual Dom diffing in pure Haskell. The Diffing is a lawful usage of @alignWith@ from the @Data.These@ package. This implimentation stores a reference to the @RawNode@ for each node in the virtual tree, merging keyed and unkeyed virtual dom techniques.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."compactable" or (errorHandler.buildDepError "compactable"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }