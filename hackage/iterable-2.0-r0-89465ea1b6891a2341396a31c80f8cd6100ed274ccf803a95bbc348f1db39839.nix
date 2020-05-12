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
      specVersion = "1.8";
      identifier = { name = "iterable"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2013";
      maintainer = "mjgajda@googlemail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/iterable";
      url = "http://hackage.haskell.org/package/iterable";
      synopsis = "API for hierarchical multilevel collections.";
      description = "Two-argument typeclass that generalizes Foldable, Functor, and Traversable for monomorphic\nmulti-level collections. Transitive instances allow for folding and mapping over any\nsubordinate level of the hierarchy.\n\nMain interface for hPDB library.\n\nContains convenience TemplateHaskell methods for generating Iterable instances that have Vector containers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }