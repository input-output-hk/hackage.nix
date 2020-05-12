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
      identifier = { name = "hoovie"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "peter@vdbrand.nl";
      author = "Peter van den Brand";
      homepage = "https://bitbucket.org/pvdbrand/hoovie";
      url = "";
      synopsis = "Haskell Media Server";
      description = "Haskell Media Server";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hoovie" = {
          depends = [
            (hsPkgs."network-multicast" or (errorHandler.buildDepError "network-multicast"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            ];
          buildable = true;
          };
        };
      };
    }