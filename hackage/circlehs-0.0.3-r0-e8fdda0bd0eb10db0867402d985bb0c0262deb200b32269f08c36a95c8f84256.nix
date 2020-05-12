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
      identifier = { name = "circlehs"; version = "0.0.3"; };
      license = "MIT";
      copyright = "2016 Denis Shevchenko";
      maintainer = "me@dshevchenko.biz";
      author = "Denis Shevchenko";
      homepage = "https://github.com/denisshevchenko/circlehs";
      url = "";
      synopsis = "The CircleCI REST API for Haskell";
      description = "The CircleCI REST API implementation in Haskell. For more info please see <https://circleci.com/docs/api/ official API reference>.\n\nBuilt with <http://hackage.haskell.org/package/servant Servant>.\n\n/Please note that implementation is incomplete yet./";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          ];
        buildable = true;
        };
      };
    }