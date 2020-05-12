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
      identifier = { name = "rollbar"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "Daggerboard Inc. makers of docmunch.com";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Daggerboard Inc. Greg Weber";
      homepage = "https://github.com/docmunch/rollbar-haskell";
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
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          ];
        buildable = true;
        };
      };
    }