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
      identifier = { name = "kure"; version = "2.8.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012--2013 The University of Kansas";
      maintainer = "Neil Sculthorpe <neil@ittc.ku.edu>";
      author = "Neil Sculthorpe and Andy Gill";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/software/kure.html";
      url = "";
      synopsis = "Combinators for Strategic Programming";
      description = "The Kansas University Rewrite Engine (KURE) is a domain-specific language for strategic rewriting.\nKURE was inspired by Stratego and StrategyLib, and has similarities with Scrap Your Boilerplate and Uniplate.\n\nThe basic transformation functionality can be found in \"Language.KURE.Translate\",\nand the traversal functionality can be found in \"Language.KURE.Walker\".\nSeveral basic examples of using KURE are provided in the source-code bundle.\nFor larger examples, see the HERMIT or HTML-KURE packages.\n\nYou can read about KURE in the following article:\n\nKURE: A Haskell-Embedded Strategic Programming Language with Custom Closed Universes.  Neil Sculthorpe and Nicolas Frisby and Andy Gill.  2013.\n<http://www.ittc.ku.edu/~neil/papers_and_talks/kure.pdf>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
        ];
        buildable = true;
      };
    };
  }