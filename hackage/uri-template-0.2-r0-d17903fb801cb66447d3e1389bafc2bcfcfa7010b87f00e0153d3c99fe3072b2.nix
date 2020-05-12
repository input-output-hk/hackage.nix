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
      identifier = { name = "uri-template"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sof@forkIO.com";
      author = "Sigbjorn Finne <sof@forkIO.com>";
      homepage = "";
      url = "";
      synopsis = "URI template library for Haskell";
      description = "A URI template expansion library for Haskell. Provides\nsupport for Joe Gregorio's standardized format, OpenSearch 1.1's\nformat + WADL/WSDL-style templates.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "main" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }