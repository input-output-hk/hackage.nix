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
      specVersion = "1.2";
      identifier = { name = "delicious"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Galois, Inc.";
      maintainer = "Sigbjorn Finne <sof@galois.com>";
      author = "Sigbjorn Finne <sof@galois.com>";
      homepage = "http://galois.com";
      url = "";
      synopsis = "Accessing the del.icio.us APIs from Haskell (v2)";
      description = "Access to the del.icio.us social tagging site's API(v2) from Haskell";
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