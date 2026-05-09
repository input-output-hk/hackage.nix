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
    flags = { base-ge-4-16 = true; base-ge-4-17 = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "binary-orphans"; version = "1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "Compatibility package for binary; provides instances";
      description = "This package provides instances defined in later versions of @binary@ package\n\nPrior version 1 this packages provided instances for other packages.\nThat functionality is moved to [binary-instances](https://hackage.haskell.org/package/binary-instances) package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ] ++ pkgs.lib.optional (!flags.base-ge-4-16) (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))) ++ pkgs.lib.optional (!flags.base-ge-4-17) (hsPkgs."data-array-byte" or (errorHandler.buildDepError "data-array-byte"))) ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ]) ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "binary-orphans-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-orphans" or (errorHandler.buildDepError "binary-orphans"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ] ++ pkgs.lib.optional (!flags.base-ge-4-17) (hsPkgs."data-array-byte" or (errorHandler.buildDepError "data-array-byte"));
          buildable = true;
        };
      };
    };
  }