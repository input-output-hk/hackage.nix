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
      identifier = { name = "rollbar"; version = "1.1.0"; };
      license = "MIT";
      copyright = "Daggerboard Inc. makers of docmunch.com, Azara Solutions Inc.";
      maintainer = "Azara <engineering@azara.io>, Jeff Taggart <jeff@jetaggart.com>, Steven MacCoun <theraccoun@gmail.com>";
      author = "Daggerboard Inc. Greg Weber, Azara Solutions Inc. Jeff Taggart";
      homepage = "https://github.com/azara/rollbar-haskell";
      url = "";
      synopsis = "error tracking through rollbar.com";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          ];
        buildable = true;
        };
      };
    }