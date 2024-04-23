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
      identifier = { name = "BNFC-meta"; version = "0.4.0.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Jonas Duregård (jonas.duregard@chalmers.se)";
      author = "Jonas Duregård";
      homepage = "";
      url = "";
      synopsis = "Deriving Parsers and Quasi-Quoters from BNF Grammars";
      description = "This package provides a very simple way of defining a compiler\nfront-end for a language by embedding a BNF grammar directly into a Haskell\nsource file.\nSpecifically, given a quasi-quoted LBNF grammar (as used by the BNF Converter)\nit generates (using Template Haskell) a LALR parser and pretty pretty printer\nfor the language. The parser is then used to automatically define a\nquasi-quoter for the defined language so it can also be seamlessly embedded\nin Haskell source code. With a\nsimple addition to the gramwmar, the user can define a universal syntax for\nanti-quoting. This\nmeans that any grammar non-terminal can be replaced by a quoted Haskell\nexpression of the appropriate type. A few example languages are included in\nthe source tarball.\n\nThe LBNF grammar formalism is described thoroughly in the BNF Converter\ndocumentation: <http://bnfc.digitalgrammars.com/>\n\nThis library and the additions it makes to LBNF is described in a\n2011 Haskell Symposium paper titled \\\"Embedded Parser Generators\\\":\n<http://wiki.portal.chalmers.se/cse/pmwiki.php/FP/EmbeddedParserGenerators>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."happy-meta" or (errorHandler.buildDepError "happy-meta"))
          (hsPkgs."alex-meta" or (errorHandler.buildDepError "alex-meta"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
        ];
        buildable = true;
      };
    };
  }