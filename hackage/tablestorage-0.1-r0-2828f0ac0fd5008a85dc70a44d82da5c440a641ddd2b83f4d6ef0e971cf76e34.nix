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
      identifier = { name = "tablestorage"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Phil Freeman 2012";
      maintainer = "Phil Freeman <paf31-at-cantab.net>";
      author = "Phil Freeman <paf31-at-cantab.net>";
      homepage = "http://github.com/paf31/tablestorage";
      url = "";
      synopsis = "Azure Table Storage REST API Wrapper";
      description = "A collection of functions to call the methods of the Azure Table Storage REST API from Haskell.\nTable and entity level functions are supported along with shared key authentication token generation, and error handling.\nPagination and projections are currently not supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }