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
      identifier = { name = "HaTeX"; version = "3.17.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Díaz (dhelta `dot` diaz `at` gmail `dot` com)";
      author = "Daniel Díaz";
      homepage = "https://github.com/Daniel-Diaz/HaTeX/blob/master/README.md";
      url = "";
      synopsis = "The Haskell LaTeX library.";
      description = "This library implements the LaTeX syntax and provides some useful abstractions.\n\nSome of the things you can do with HaTeX are:\n\n* Write LaTeX documents with all the advantages you already have in Haskell: recursion,\ntype system, high order functions, ...\n\n* Create a LaTeX backend for your own program.\n\n* Parse a LaTeX file and obtain its Abstract Syntax Tree (AST).\n\n* Pretty-print Haskell values in LaTeX.\n\n* Generate TikZ scripts (images!) easily.\n\nBrowse the @examples@ directory in the source distribution to see some simple examples.\nIt might help you to get started. The HaTeX User's Guide is available at\n<https://github.com/Daniel-Diaz/hatex-guide/blob/master/README.md>.\nWe also have a mailing list (<http://projects.haskell.org/cgi-bin/mailman/listinfo/hatex>)\nand an IRC channel (@#hatex@). If you just want to read a short introduction, read\nthe \"Text.LaTeX\" module.\n\nIf you prefer to write in LaTeX and all you want is to /program/ some parts of the document,\nor if you already have the LaTeX document written and you just want to add some automatically\ngenerated LaTeX code somewhere, check haskintex: <http://daniel-diaz.github.io/projects/haskintex>.\nIt allows you to embed Haskell in LaTeX. It also makes you easy to use HaTeX within a LaTeX document.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."wl-pprint-extras" or (errorHandler.buildDepError "wl-pprint-extras"))
          ];
        buildable = true;
        };
      tests = {
        "hatex-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        "parser-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }