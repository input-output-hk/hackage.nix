{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      profile = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hxt-regex-xmlschema";
        version = "9.2.0.3";
      };
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
      "hxt-regex-xmlschema" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hxt-charproperties)
          (hsPkgs.parsec)
          (hsPkgs.text)
        ];
      };
      tests = {
        "SimpleMatch" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hxt-regex-xmlschema)
            (hsPkgs.text)
            (hsPkgs.HUnit)
          ];
        };
        "Date" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hxt-regex-xmlschema)
            (hsPkgs.parsec)
            (hsPkgs.text)
            (hsPkgs.HUnit)
          ];
        };
      };
      benchmarks = {
        "Benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.hxt-regex-xmlschema)
            (hsPkgs.parsec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }