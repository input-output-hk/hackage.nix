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
      specVersion = "1.10";
      identifier = {
        name = "units";
        version = "2.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <eir@cis.upenn.edu>, Takayuki Muranushi <muranushi@gmail.com>";
      author = "Richard Eisenberg <eir@cis.upenn.edu>";
      homepage = "https://github.com/goldfirere/units";
      url = "";
      synopsis = "A domain-specific type system for dimensional analysis";
      description = "The units package provides a mechanism for compile-time\ndimensional analysis in Haskell programs. It defines an embedded\ntype system based on units-of-measure. The units defined are fully\nextensible, and need not relate to physical properties.\nThe package supports defining multiple inter-convertible units,\nsuch as Meter and Foot. When extracting a number from a\ndimensioned quantity, the desired unit must be specified, and the\nvalue is converted into that unit.\nIf you are looking for specific systems of units (such as SI),\nplease see the `units-defs` package.\nThe Haddock documentation is insufficient for using the units\npackage. Please see the README file, available from the package\nhome page.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.th-desugar)
          (hsPkgs.singletons)
          (hsPkgs.vector-space)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.multimap)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "main" = {
          depends  = [
            (hsPkgs.units)
            (hsPkgs.base)
            (hsPkgs.th-desugar)
            (hsPkgs.singletons)
            (hsPkgs.vector-space)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.HUnit-approx)
            (hsPkgs.template-haskell)
            (hsPkgs.mtl)
            (hsPkgs.multimap)
            (hsPkgs.syb)
            (hsPkgs.containers)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }