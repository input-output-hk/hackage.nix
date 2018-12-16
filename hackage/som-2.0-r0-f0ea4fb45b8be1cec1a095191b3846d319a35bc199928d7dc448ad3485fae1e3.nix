{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "som";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Amy de Buitléir 2010-2012";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitléir";
      homepage = "";
      url = "";
      synopsis = "Self-Organising Maps";
      description = "A Kohonen Self-organising Map (SOM) maps input patterns\nonto a regular grid (usually two-dimensional) where each\nnode in the grid is a model of the input data, and does\nso using a method which ensures that any topological\nrelationships within the input data are also represented\nin the grid. This implementation supports the use of\nnon-numeric patterns.\n\nIn layman's terms, a SOM can be useful when you you want\nto discover the underlying structure of some data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.grid)
          (hsPkgs.MonadRandom)
        ];
      };
      tests = {
        "som-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.som)
            (hsPkgs.grid)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.MonadRandom)
            (hsPkgs.random)
          ];
        };
      };
    };
  }