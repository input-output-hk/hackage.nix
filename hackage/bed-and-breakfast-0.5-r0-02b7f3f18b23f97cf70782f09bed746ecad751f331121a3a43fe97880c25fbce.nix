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
      identifier = { name = "bed-and-breakfast"; version = "0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "https://hackage.haskell.org/package/bed-and-breakfast";
      url = "";
      synopsis = "Efficient Matrix and Vector operations in 100% Haskell.";
      description = "Efficient Matrix and Vector operations in 100% Haskell.\n\nThis library uses boxed and unboxed arrays\nin the ST monad, in order to achieve efficiency.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          ];
        buildable = true;
        };
      tests = {
        "quickcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bed-and-breakfast" or (errorHandler.buildDepError "bed-and-breakfast"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }