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
      identifier = { name = "gemini-textboard"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2020 Francesco Gazzetta and contributors";
      maintainer = "Francesco Gazzetta <fgaz@fgaz.me>";
      author = "Francesco Gazzetta";
      homepage = "https://sr.ht/~fgaz/haskell-gemini/";
      url = "";
      synopsis = "A barebones textboard for the Gemini protocol";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gemini-textboard" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gemini-server" or (errorHandler.buildDepError "gemini-server"))
            (hsPkgs."gemini-router" or (errorHandler.buildDepError "gemini-router"))
            (hsPkgs."language-gemini" or (errorHandler.buildDepError "language-gemini"))
            (hsPkgs."nonce" or (errorHandler.buildDepError "nonce"))
            (hsPkgs."cache" or (errorHandler.buildDepError "cache"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }