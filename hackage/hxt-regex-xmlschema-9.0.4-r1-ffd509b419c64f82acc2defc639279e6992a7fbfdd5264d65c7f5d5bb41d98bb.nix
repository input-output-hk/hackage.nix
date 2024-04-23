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
      identifier = { name = "hxt-regex-xmlschema"; version = "9.0.4"; };
      license = "MIT";
      copyright = "Copyright (c) 2010- Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt";
      homepage = "http://www.haskell.org/haskellwiki/Regular_expressions_for_XML_Schema";
      url = "";
      synopsis = "A regular expression library for W3C XML Schema regular expressions";
      description = "This library supports full W3C XML Schema regular expressions\ninclusive all Unicode character sets and blocks.\nThe complete grammar can be found under <http://www.w3.org/TR/xmlschema11-2/#regexs>.\nIt is implemented by the technique of derivations of regular expressions.\nThe W3C syntax is extended to support not only union of regular sets,\nbut also intersection, set difference, exor.\nMatching of subexpressions is also supported.\nThe library can be used for constricting lightweight scanners and tokenizers.\nIt is a standalone library, no external regex libraries are used.\nThis package is a substitute for the old regex-xmlschema package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."hxt-charproperties" or (errorHandler.buildDepError "hxt-charproperties"))
        ];
        buildable = true;
      };
    };
  }