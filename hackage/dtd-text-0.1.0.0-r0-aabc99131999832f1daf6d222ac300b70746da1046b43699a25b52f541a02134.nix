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
      identifier = { name = "dtd-text"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gale@sefer.org";
      author = "Yitzchak Gale";
      homepage = "http://projects.haskell.org/dtd/";
      url = "";
      synopsis = "Parse and render XML DTDs";
      description = "This library provides an attoparse-text parser and blaze-builder for\nXML Document Type Declaration (DTD) documents.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."dtd-types" or (errorHandler.buildDepError "dtd-types"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-text" or (errorHandler.buildDepError "attoparsec-text"))
        ];
        buildable = true;
      };
    };
  }