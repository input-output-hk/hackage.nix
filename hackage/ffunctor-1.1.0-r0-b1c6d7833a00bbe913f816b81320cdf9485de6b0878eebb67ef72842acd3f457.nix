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
      specVersion = "2.2";
      identifier = { name = "ffunctor"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sam Halliday";
      maintainer = "Sam Halliday";
      author = "Sam Halliday";
      homepage = "";
      url = "";
      synopsis = "FFunctor typeclass";
      description = "Micro library with a Higher kinded Functor in the spirit of HFunctor,\nMFunctor and MonadTrans.\n\nUseful to map over the type parameter in a record of\nfunctions, e.g. https://www.benjamin.pizza/posts/2017-12-15-functor-functors.html";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ffunctor" or (errorHandler.buildDepError "ffunctor"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }