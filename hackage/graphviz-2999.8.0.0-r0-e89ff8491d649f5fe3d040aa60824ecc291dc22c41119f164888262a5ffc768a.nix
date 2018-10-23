{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "graphviz";
        version = "2999.8.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Matthew Sackman, Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Matthew Sackman, Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Graphviz bindings for Haskell.";
      description = "This library provides bindings for the Dot language used by the\nGraphviz (<http://graphviz.org/>) suite of programs, as well as\nfunctions to call the Grapvhiz programs.\n\nFeatures of this library are:\n\n* Almost complete coverage of all Graphviz attributes, etc. for\ngraphs, sub-graphs, clusters, nodes and edges:\n<http://graphviz.org/doc/info/attrs.html>\n\n* Thorough documentation on known problems with the library and how it\ndiffers from the actual Dot specification.\n\n* Support for specifying clusters.\n\n* The ability to use a custom node type.\n\n* Functions for running a Graphviz layout tool with all specified\noutput types.\n\n* The ability to not only generate but also parse Dot code with two\noptions: strict and liberal (in terms of ordering of statements).\n\n* Functions to convert FGL graphs to Dot code - including support to\ngroup them into clusters - with a high degree of customisation by\nspecifying which attributes to use.\n\n* Round-trip support for passing an FGL graph through Graphviz to\naugment node and edge labels with positional information, etc.";
      buildType = "Simple";
    };
    components = {
      "graphviz" = {
        depends  = [
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
        ] ++ pkgs.lib.optional (flags.test) (hsPkgs.QuickCheck);
      };
      exes = {
        "graphviz-testsuite" = {};
      };
    };
  }