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
      specVersion = "1.8";
      identifier = { name = "delicious"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2014 Sigbjorn Finne.";
      maintainer = "Sigbjorn Finne <sof@forkIO.com>";
      author = "Sigbjorn Finne <sof@forkIO.com>";
      homepage = "https://github.com/sof/delicious";
      url = "";
      synopsis = "Accessing the del.icio.us APIs from Haskell (v2)";
      description = "A Haskell binding to the del.icio.us API, letting you\nprogrammatically access its tagged content.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."nano-md5" or (errorHandler.buildDepError "nano-md5"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          ];
        buildable = true;
        };
      };
    }