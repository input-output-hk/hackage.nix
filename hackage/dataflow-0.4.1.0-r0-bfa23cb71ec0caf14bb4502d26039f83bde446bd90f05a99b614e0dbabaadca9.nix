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
        name = "dataflow";
        version = "0.4.1.0";
      };
      license = "MIT";
      copyright = "oskar.wickstrom@gmail.com";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "https://github.com/owickstrom/dataflow";
      url = "";
      synopsis = "Generate Graphviz documents from a Haskell representation.";
      description = "Outputs .dot files that can be processed by the dot\ncommand. Currently it only supports the DFD output format\n(http://en.wikipedia.org/wiki/Data_flow_diagram). Support\nfor a Graphviz-like input format (instead of using the\ndata structures in Haskell) is planned.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }