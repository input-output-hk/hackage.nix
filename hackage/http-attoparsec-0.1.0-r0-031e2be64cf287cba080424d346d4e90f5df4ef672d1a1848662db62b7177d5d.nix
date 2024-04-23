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
      identifier = { name = "http-attoparsec"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2013 Tero Laitinen";
      maintainer = "tol@iki.fi";
      author = "Tero Laitinen";
      homepage = "https://github.com/tlaitinen/http-attoparsec";
      url = "";
      synopsis = "Attoparsec parsers for http-types.";
      description = "Attoparsec parsers for http-types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
        ];
        buildable = true;
      };
    };
  }