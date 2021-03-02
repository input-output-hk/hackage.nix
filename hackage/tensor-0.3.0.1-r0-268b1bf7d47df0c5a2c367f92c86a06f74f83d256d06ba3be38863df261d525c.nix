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
      identifier = { name = "tensor"; version = "0.3.0.1"; };
      license = "GPL-3.0-only";
      copyright = "© 2012-2013 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Federico Squartini, Nicola Squartini";
      homepage = "http://noaxiom.org/tensor";
      url = "";
      synopsis = "A completely type-safe library for linear algebra";
      description = "This library defines data types and classes for fixed dimension\nvectors and tensors. See the homepage <http://noaxiom.org/tensor>\nfor more details, or @\"Data.Tensor.Examples\"@ for a short tutorial.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.ghc.components.exes.ghc or (pkgs.buildPackages.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
          ];
        buildable = true;
        };
      tests = {
        "test-ordinal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tensor" or (errorHandler.buildDepError "tensor"))
            ];
          buildable = true;
          };
        "test-multiindex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tensor" or (errorHandler.buildDepError "tensor"))
            ];
          buildable = true;
          };
        "test-tensor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tensor" or (errorHandler.buildDepError "tensor"))
            ];
          buildable = true;
          };
        };
      };
    }