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
      identifier = { name = "reactive-banana-bunch"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/reactive-banana-bunch/";
      url = "";
      synopsis = "Extend reactive-banana to multiple events per time point";
      description = "This package provides a wrapper around @Reactive.Banana.Event@\nthat somehow restores the behavior of @reactive-banana < 1.0@.\nThat is, at every point in time there can be multiple events.\nThe advantage is that you have a @RB.union@ without a combination function,\nthe disadvantage is that there cannot be an @RB.unionWith@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }