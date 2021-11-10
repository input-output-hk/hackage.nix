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
      identifier = { name = "monad-tree"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "nbedell@tulane.edu";
      author = "Nathan Bedell";
      homepage = "";
      url = "";
      synopsis = "Tree data structure for nondeterministic computations.";
      description = "This package provides monad instances for a rose tree-like data structure that can be used for\nnondeterministic computations.\nThis is similar to the list monad but allows for computations\nto remain agnostic about the specific search procedure used.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }