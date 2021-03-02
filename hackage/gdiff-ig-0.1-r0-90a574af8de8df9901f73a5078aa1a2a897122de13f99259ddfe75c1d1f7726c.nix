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
      specVersion = "1.2";
      identifier = { name = "gdiff-ig"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Universiteit Utrecht";
      maintainer = "generics@haskell.org";
      author = "José Pedro Magalhães";
      homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/InstantGenerics";
      url = "";
      synopsis = "Generic diff for the instant-generics library";
      description = "The generic diff of <http://hackage.haskell.org/package/gdiff> adapted to the\n<http://hackage.haskell.org/package/instant-generics> library.\n\nThe Test.hs file (included in the package) shows an example of use of this\nlibrary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."instant-generics" or (errorHandler.buildDepError "instant-generics"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }