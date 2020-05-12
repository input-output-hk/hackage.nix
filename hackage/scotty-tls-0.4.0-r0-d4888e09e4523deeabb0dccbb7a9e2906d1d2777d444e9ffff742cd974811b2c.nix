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
      identifier = { name = "scotty-tls"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "https://github.com/dmjio/scotty-tls.git";
      url = "";
      synopsis = "TLS for Scotty";
      description = "Run your Scotty apps over TLS";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }