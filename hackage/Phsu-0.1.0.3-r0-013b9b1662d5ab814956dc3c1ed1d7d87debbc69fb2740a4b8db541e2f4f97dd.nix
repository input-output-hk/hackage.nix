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
      identifier = { name = "Phsu"; version = "0.1.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "utkarsh.lath@gmail.com";
      author = "Utakrsh Lath";
      homepage = "localhost:9119";
      url = "";
      synopsis = "Personal Happstack Server Utils";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Phsu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."happstack-server-tls" or (errorHandler.buildDepError "happstack-server-tls"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            (hsPkgs."friendly-time" or (errorHandler.buildDepError "friendly-time"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            ];
          buildable = true;
          };
        };
      };
    }