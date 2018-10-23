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
        name = "dawg-ord";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/dawg-ord";
      url = "";
      synopsis = "Directed acyclic word graphs";
      description = "The library implements /directed acyclic word graphs/ (DAWGs)\ninternally represented as /minimal acyclic deterministic\nfinite-state automata/.\n\nThe library allows to build DAWGs from words over any alphabet\nproviding an `Ord` instance.\nIt also provides a fast insert operation which can be used to\nbuild DAWGs on-the-fly.";
      buildType = "Simple";
    };
    components = {
      "dawg-ord" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }