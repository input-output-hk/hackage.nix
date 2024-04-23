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
      identifier = { name = "CHXHtml"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2010 Paul Talaga <paul@fuzzpault.com>";
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
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
        ];
        buildable = true;
      };
    };
  }