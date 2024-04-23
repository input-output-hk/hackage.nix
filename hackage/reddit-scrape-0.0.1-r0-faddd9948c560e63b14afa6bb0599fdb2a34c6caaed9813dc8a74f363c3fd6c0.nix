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
      specVersion = "1.12";
      identifier = { name = "reddit-scrape"; version = "0.0.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Rickard Andersson <gonz@severnatazvezda.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Library for getting links from a sub-reddit";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."scalpel" or (errorHandler.buildDepError "scalpel"))
        ];
        buildable = true;
      };
      tests = {
        "reddit-scrape-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."reddit-scrape" or (errorHandler.buildDepError "reddit-scrape"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."scalpel" or (errorHandler.buildDepError "scalpel"))
          ];
          buildable = true;
        };
      };
    };
  }