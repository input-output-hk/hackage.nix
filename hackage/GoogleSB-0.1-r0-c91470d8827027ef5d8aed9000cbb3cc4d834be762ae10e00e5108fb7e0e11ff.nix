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
      identifier = { name = "GoogleSB"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Alex Ott, 2009";
      maintainer = "alexott@gmail.com";
      author = "Alex Ott";
      homepage = "";
      url = "";
      synopsis = "Interface to Google Safe Browsing API";
      description = "This package implements support for Google Safe Browsing API, that provides\nalmost real-time information about malware & other malicious sites on the Web";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ];
        buildable = true;
      };
    };
  }