{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "graphviz"; version = "2999.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Matthew Sackman, Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Matthew Sackman, Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Graphviz bindings for Haskell.";
      description = "This library provides bindings for the Dot language\nused by the Graphviz (<http://graphviz.org/>)\nsuite of programs.  Also provided are\nconvenience functions to convert FGL graphs into\nDot code with a large degree of customisation\nfor layout, etc.\nAlso allows a limited amount of parsing of Dot,\nand round-trip usage of Graphviz to attach\npositional data to each node and edge in the\ngraph.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.fgl)
          (hsPkgs.filepath)
          (hsPkgs.polyparse)
          (hsPkgs.pretty)
          (hsPkgs.bytestring)
          (hsPkgs.colour)
          ] ++ (pkgs.lib).optional (flags.test) (hsPkgs.QuickCheck);
        };
      exes = { "graphviz-testsuite" = {}; };
      };
    }