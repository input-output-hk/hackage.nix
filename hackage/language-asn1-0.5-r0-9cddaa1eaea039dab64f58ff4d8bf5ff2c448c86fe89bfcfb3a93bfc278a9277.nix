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
    flags = { splitbase = true; test = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "language-asn1"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "LICENSE";
      maintainer = "Dmitry Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>";
      homepage = "http://patch-tag.com/r/adept/language-asn1";
      url = "";
      synopsis = "Parsing of ASN1 definitions";
      description = "Language.ASN1 is a haskell library for the analysis of ASN.1 code.\nIt features an almost-complete, somewhat tested parser for large subset of\nX.680-0207 -- X.683-0207 standards";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.10") (hsPkgs."base" or (errorHandler.buildDepError "base"));
        buildable = true;
        };
      exes = {
        "LanguageASN1Testsuite" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ];
          buildable = if flags.test then true else false;
          };
        "TestASN1Parser" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }