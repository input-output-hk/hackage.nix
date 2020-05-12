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
      identifier = { name = "http2-client-exe"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/http2-client-exe#readme";
      url = "";
      synopsis = "A command-line http2 client.";
      description = "A reference command-line tool using http2-client. Please see the README on GitHub at <https://github.com/lucasdicioccio/http2-client-exe#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "http2-client-exe" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
            (hsPkgs."http2-client" or (errorHandler.buildDepError "http2-client"))
            (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            ];
          buildable = true;
          };
        };
      };
    }