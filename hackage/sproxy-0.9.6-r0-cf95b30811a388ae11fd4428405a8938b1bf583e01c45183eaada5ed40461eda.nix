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
      identifier = { name = "sproxy"; version = "0.9.6"; };
      license = "MIT";
      copyright = "2013-2016, Zalora South East Asia Pte. Ltd";
      maintainer = "Igor Pashev <pashev.igor@gmail.com>";
      author = "Chris Forno <jekor@jekor.com>\n, Igor Pashev <pashev.igor@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "HTTP proxy for authenticating users via Google OAuth2";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sproxy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."docopt" or (errorHandler.buildDepError "docopt"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-kit" or (errorHandler.buildDepError "http-kit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."interpolatedstring-perl6" or (errorHandler.buildDepError "interpolatedstring-perl6"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }