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
      identifier = { name = "kure"; version = "2.18.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006--2021 The University of Kansas";
      maintainer = "Neil Sculthorpe <neil.sculthorpe@ntu.ac.uk>";
      author = "Neil Sculthorpe and Andy Gill";
      homepage = "https://ku-fpg.github.io/software/kure/";
      url = "";
      synopsis = "Combinators for Strategic Programming";
      description = "The Kansas University Rewrite Engine (KURE) is a domain-specific language for strategic rewriting.\nKURE was inspired by Stratego and StrategyLib, and has similarities with Scrap Your Boilerplate and Uniplate.\n\nThe basic transformation functionality can be found in \"Language.KURE.Transform\",\nand the traversal functionality can be found in \"Language.KURE.Walker\".\nSeveral basic examples of using KURE are provided in the source-code bundle.\nFor larger examples, see the HERMIT or HTML-KURE packages.\n\nYou can read about KURE in the following article:\n\nThe Kansas University Rewrite Engine: A Haskell-Embedded Strategic Programming Language with Custom Closed Universes.  Neil Sculthorpe, Nicolas Frisby and Andy Gill.  Journal of Functional Programming.  Cambridge University Press, 24(4), pages 434-473, 2014.\n<https://dx.doi.org/10.1017/S0956796814000185>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }