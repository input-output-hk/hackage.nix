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
      specVersion = "1.10";
      identifier = { name = "hxt-regex-xmlschema"; version = "9.2.0.2"; };
      license = "MIT";
      copyright = "Copyright (c) 2010- Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt";
      homepage = "http://www.haskell.org/haskellwiki/Regular_expressions_for_XML_Schema";
      url = "";
      synopsis = "A regular expression library for W3C XML Schema regular expressions";
      description = "This library supports full W3C XML Schema regular expressions\ninclusive all Unicode character sets and blocks.\nThe complete grammar can be found under <http://www.w3.org/TR/xmlschema11-2/#regexs>.\nIt is implemented by the technique of derivations of regular expressions.\n\nThe W3C syntax is extended to support not only union of regular sets,\nbut also intersection, set difference, exor.\nMatching of subexpressions is also supported.\n\nThe library can be used for constricting lightweight scanners and tokenizers.\nIt is a standalone library, no external regex libraries are used.\n\nExtensions in 9.2: The library does nor only support String's, but also\nByteString's and Text in strict and lazy variants";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hxt-charproperties" or (errorHandler.buildDepError "hxt-charproperties"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "SimpleMatch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hxt-regex-xmlschema" or (errorHandler.buildDepError "hxt-regex-xmlschema"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "Date" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hxt-regex-xmlschema" or (errorHandler.buildDepError "hxt-regex-xmlschema"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "Benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hxt-regex-xmlschema" or (errorHandler.buildDepError "hxt-regex-xmlschema"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }