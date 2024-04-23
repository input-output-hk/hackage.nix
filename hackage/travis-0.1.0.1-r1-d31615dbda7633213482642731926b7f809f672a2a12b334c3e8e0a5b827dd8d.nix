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
      identifier = { name = "travis"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "tomtau@hku.hk";
      author = "Tomas Tauber";
      homepage = "http://github.com/tomtau/travis#readme";
      url = "";
      synopsis = "A simple client implementation using Travis CI API.";
      description = "A simple client implementation using Travis CI API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }