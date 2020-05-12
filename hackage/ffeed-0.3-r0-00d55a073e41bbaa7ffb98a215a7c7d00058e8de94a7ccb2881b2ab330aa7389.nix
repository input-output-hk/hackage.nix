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
    flags = { new-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "ffeed"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sof@forkio.com";
      author = "Sigbjorn Finne";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to the FriendFeed API";
      description = "The hs-ffeed API binding lets you access friendfeed.com's\nresources and methods from Haskell. Implements the\nfull API, as specified at http://code.google.com/p/friendfeed-api/wiki/ApiDocumentation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "main" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "showPublic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        "tweetStream" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }