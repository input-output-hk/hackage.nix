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
      specVersion = "1.12";
      identifier = { name = "language-asn1"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dmitry Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>";
      homepage = "https://github.com/adept/language-asn1";
      url = "";
      synopsis = "Parsing of ASN1 definitions";
      description = "Language.ASN1 is a haskell library for the analysis of ASN.1 code. It features an almost-complete, somewhat tested parser for large subset of X.680-0207 -- X.683-0207 standards";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      exes = {
        "dump-asn1-ast" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-asn1" or (errorHandler.buildDepError "language-asn1"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ];
          buildable = true;
          };
        };
      tests = {
        "LanguageASN1Testsuite" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-asn1" or (errorHandler.buildDepError "language-asn1"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }