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
      identifier = { name = "gemini-router"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2020 Francesco Gazzetta and contributors";
      maintainer = "Francesco Gazzetta <fgaz@fgaz.me>";
      author = "Francesco Gazzetta";
      homepage = "https://sr.ht/~fgaz/haskell-gemini/";
      url = "";
      synopsis = "A simple Happstack-style Gemini router";
      description = "This package contains a 'Router' monad transformer that works on top of the\ngemini-server package, with a functional+monadic+alternative interface,\nsimilar to Happstack. With it you can define gemini endpoints, capture parts\nof the request, and pass the requests to specific handlers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gemini-server" or (errorHandler.buildDepError "gemini-server"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          ];
        buildable = true;
        };
      };
    }