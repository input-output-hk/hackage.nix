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
    flags = { unsafeindices = false; };
    package = {
      specVersion = "1.20";
      identifier = { name = "easytensor"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) Artem Chirkin";
      maintainer = "chirkin@arch.ethz.ch";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/easytensor#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Pure haskell vector/matrix/tensor library.\nFeatures dimensionality type-checking for all operations.\nGeneric n-dimensional versions are implemented using low-level prim ops.\nAllows ad-hoc replacement with fixed low-dimensionality vectors and matrices without changing user interface.\nPlease see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      exes = {
        "easytensor-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."easytensor" or (errorHandler.buildDepError "easytensor"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            ];
          buildable = true;
          };
        };
      tests = {
        "easytensor-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."easytensor" or (errorHandler.buildDepError "easytensor"))
            ];
          buildable = true;
          };
        };
      };
    }