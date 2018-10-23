{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "kure";
        version = "2.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 The University of Kansas";
      maintainer = "Neil Sculthorpe <neil@ittc.ku.edu>";
      author = "Neil Sculthorpe and Andy Gill";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/Tools/KURE";
      url = "";
      synopsis = "Combinators for Strategic Programming";
      description = "The Kansas University Rewrite Engine (KURE) is a DSL for strategic rewriting.\nKURE shares concepts with Stratego, but unlike Stratego, KURE is strongly typed.\nKURE is similar to StrategyLib, but has a lightweight generic traversal mechanism\nusing type families rather than SYB.\nThe basic transformation functionality can be found in \"Language.KURE.Translate\",\nand  the traversal functionality can be found in \"Language.KURE.Walker\".\nSeveral basic examples of using KURE are provided in the source-code bundle.\nFor a larger example, see the HERMIT package.";
      buildType = "Simple";
    };
    components = {
      "kure" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }