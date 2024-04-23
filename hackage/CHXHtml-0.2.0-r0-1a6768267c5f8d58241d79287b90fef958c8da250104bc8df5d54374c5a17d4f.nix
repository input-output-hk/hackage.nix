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
      identifier = { name = "CHXHtml"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2011 Paul Talaga <paul@fuzzpault.com>";
      maintainer = "paul@fuzzpault.com";
      author = "Paul Talaga";
      homepage = "http://fuzzpault.com/chxhtml";
      url = "";
      synopsis = "A W3C compliant (X)HTML generating library            ";
      description = "An (X)Html generating library providing nearly full W3C compliance.  Non-compliant\ncontent is exposed at compile time and fails type-check.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."hxt-regex-xmlschema" or (errorHandler.buildDepError "hxt-regex-xmlschema"))
        ];
        buildable = true;
      };
    };
  }