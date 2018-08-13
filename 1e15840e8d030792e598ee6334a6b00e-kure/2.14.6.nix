{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "kure";
        version = "2.14.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006--2014 The University of Kansas";
      maintainer = "Neil Sculthorpe <N.A.Sculthorpe@swansea.ac.uk>";
      author = "Neil Sculthorpe and Andy Gill";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/software/kure.html";
      url = "";
      synopsis = "Combinators for Strategic Programming";
      description = "The Kansas University Rewrite Engine (KURE) is a domain-specific language for strategic rewriting.\nKURE was inspired by Stratego and StrategyLib, and has similarities with Scrap Your Boilerplate and Uniplate.\n\nThe basic transformation functionality can be found in \"Language.KURE.Translate\",\nand the traversal functionality can be found in \"Language.KURE.Walker\".\nSeveral basic examples of using KURE are provided in the source-code bundle.\nFor larger examples, see the HERMIT or HTML-KURE packages.\n\nYou can read about KURE in the following article:\n\nThe Kansas University Rewrite Engine: A Haskell-Embedded Strategic Programming Language with Custom Closed Universes.  Neil Sculthorpe, Nicolas Frisby and Andy Gill.  2014.\n<http://www.cs.swan.ac.uk/~csnas/papers_and_talks/kure.pdf>";
      buildType = "Simple";
    };
    components = {
      "kure" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.dlist)
          (hsPkgs.ghc)
          (hsPkgs.transformers)
        ];
      };
    };
  }