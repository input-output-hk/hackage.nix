{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "heukarya"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "depot051@gmail.com";
      author = "He-chien Tsai";
      homepage = "https://github.com/t3476/heukarya";
      url = "";
      synopsis = "A genetic programming based on tree structure.";
      description = "It based on Data.Dynamic and tree container, so that Gene can represent both haskell functions and syntax trees by type connstructors. since it also supports higher order functions by multiple way type parsing, there's no need to have any variable in Gene's Tree structure.\n\ntake a look at module AI.Heukarya.Center first\n\nAI.Heukarya.Gene : Abstract Gene manipulation and Typeclass for implementing data types under tree structure\n\nAI.Heukarya.Jungle : Operating Collections of Gene\n\nAI.Heukarya.Center : Module which wraps main functionality for library using\n\n\nAI.Heukarya.Gene.Dynamic : one of Gene's implementation. since it's impossible to save checkpoints if using Data.Dynamic directly, a symbolic wrapper around dynamic is provied inside\n\nAI.Heukarya.Gene.Dynamic.Double : a sample geneList of operators of Double precision numbers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.deepseq)
          (hsPkgs.parallel)
          (hsPkgs.text)
          ];
        };
      };
    }