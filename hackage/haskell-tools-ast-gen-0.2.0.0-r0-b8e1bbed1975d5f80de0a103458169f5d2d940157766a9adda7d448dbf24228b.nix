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
      identifier = { name = "haskell-tools-ast-gen"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Facilities for generating new parts of the Haskell-Tools AST";
      description = "Contains utility functions to generate parts of the Haskell-Tools AST. Generates these elements to be compatible with the source annotations that are already present on the AST. The package is divided into modules based on which language elements can the given module generate. This packages should be used during the transformations to generate parts of the new AST.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."references" or (errorHandler.buildDepError "references"))
          (hsPkgs."haskell-tools-ast" or (errorHandler.buildDepError "haskell-tools-ast"))
          (hsPkgs."haskell-tools-ast-trf" or (errorHandler.buildDepError "haskell-tools-ast-trf"))
          ];
        buildable = true;
        };
      };
    }