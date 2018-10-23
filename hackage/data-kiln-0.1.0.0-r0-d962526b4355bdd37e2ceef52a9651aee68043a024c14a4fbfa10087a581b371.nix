{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "data-kiln";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Kenneth Foner";
      maintainer = "kenny.foner@gmail.com";
      author = "Kenneth Foner";
      homepage = "https://github.com/kwf/data-kiln";
      url = "";
      synopsis = "Sculpt mutable recursive data with reference equality; bake it using a data kiln into an immutable lazy structure";
      description = "We functional programmers know that mutable state is unglamorous, but sometimes useful. Data.Kiln lets you create and manipulate mutable recursive structures (Clay) in the Squishy monad (built over ST), then once you're finished with mutation, bake them into immutable, pure, lazy data. The library is polymorphic in the shape of each mutable node in the graph, requiring only that it be Traversable, which means that all sorts of structures, from cons-cells to tagged state diagrams, can be represented and manipulated safely and efficiently, with an ultimately pure output.";
      buildType = "Simple";
    };
    components = {
      "data-kiln" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.data-fix)
          (hsPkgs.IfElse)
          (hsPkgs.containers)
        ];
      };
    };
  }