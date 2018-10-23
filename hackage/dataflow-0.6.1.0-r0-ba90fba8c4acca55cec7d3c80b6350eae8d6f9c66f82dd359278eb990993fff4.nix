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
        name = "dataflow";
        version = "0.6.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Sony Mobile Communications";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström (Sony Mobile Communications)";
      homepage = "https://github.com/sonyxperiadev/dataflow";
      url = "";
      synopsis = "Generate Graphviz documents from a Haskell representation.";
      description = "Render graphs using a declarative markup. Currently\nsupports DFD (http://en.wikipedia.org/wiki/Data_flow_diagram)\nand sequence diagrams (http://plantuml.sourceforge.net/sequence.html).";
      buildType = "Simple";
    };
    components = {
      "dataflow" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.MissingH)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "dataflow" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dataflow)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.dataflow)
          ];
        };
      };
    };
  }