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
      identifier = { name = "hfd"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shumovichy@gmail.com";
      author = "Yuras Shumovich";
      homepage = "";
      url = "";
      synopsis = "Flash debugger";
      description = "Flash debugger. You need debug flash player installed to use it.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hfd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            ];
          buildable = true;
          };
        };
      };
    }