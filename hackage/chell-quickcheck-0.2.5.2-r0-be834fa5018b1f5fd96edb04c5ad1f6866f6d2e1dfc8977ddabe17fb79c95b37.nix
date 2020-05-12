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
      specVersion = "1.6";
      identifier = { name = "chell-quickcheck"; version = "0.2.5.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://github.com/typeclasses/chell";
      url = "";
      synopsis = "QuickCheck support for the Chell testing library";
      description = "QuickCheck support for the <https://hackage.haskell.org/package/chell Chell> testing library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."chell" or (errorHandler.buildDepError "chell"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }