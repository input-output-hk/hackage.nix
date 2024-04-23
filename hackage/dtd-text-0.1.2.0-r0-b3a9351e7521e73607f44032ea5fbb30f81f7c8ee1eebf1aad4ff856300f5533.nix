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
      identifier = { name = "dtd-text"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Montez Fitzpatrick <montezf@gmail.com>";
      author = "Yitzchak Gale,\nMontez Fitzpatrick";
      homepage = "http://github.com/m15k/hs-dtd-text";
      url = "";
      synopsis = "Parse and render XML DTDs";
      description = "This library provides means to parse XML Document Type Declaration (DTD) documents.";
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
        ];
        buildable = true;
      };
    };
  }