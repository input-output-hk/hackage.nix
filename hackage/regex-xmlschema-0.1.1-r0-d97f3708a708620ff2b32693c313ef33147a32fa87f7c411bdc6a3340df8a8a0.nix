{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "regex-xmlschema";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "";
      homepage = "http://www.haskell.org/haskellwiki/Regular_expressions_for_XML_Schema";
      url = "";
      synopsis = "A regular expression library for W3C XML Schema regular expressions";
      description = "This library supports full W3C XML Schema regular expressions inclusive all Unicode character sets and blocks. The complete grammar can be found under <http://www.w3.org/TR/xmlschema11-2/#regexs>. It is implemented by the technique of derivations of regular expressions. The W3C syntax is extended to support not only union of regular sets, but also intersection, set difference, exor. Matching of subexpressions is also supported. The library can be used for constricting lightweight scanners and tokenizers. It is a standalone library, no external regex libraries are used.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.parsec)
        ];
      };
    };
  }