{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "pandoc-types";
        version = "1.12.4.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2015 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://johnmacfarlane.net/pandoc";
      url = "";
      synopsis = "Types for representing a structured document";
      description = "@Text.Pandoc.Definition@ defines the 'Pandoc' data\nstructure, which is used by pandoc to represent\nstructured documents.  This module used to live\nin the pandoc package, but starting with pandoc 1.7, it\nhas been split off, so that other packages can use it\nwithout drawing in all of pandoc's dependencies, and\npandoc itself can depend on packages (like citeproc-hs)\nthat use them.\n\n@Text.Pandoc.Builder@ provides functions for building\nup @Pandoc@ structures programmatically.\n\n@Text.Pandoc.Generic@ provides generic functions for\nmanipulating Pandoc documents.\n\n@Text.Pandoc.Walk@ provides faster, nongeneric functions\nfor manipulating Pandoc documents.\n\n@Text.Pandoc.JSON@ provides functions for serializing\nand deserializing a @Pandoc@ structure to and from JSON.";
      buildType = "Simple";
    };
    components = {
      "pandoc-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.syb)
          (hsPkgs.ghc-prim)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.deepseq-generics)
        ];
      };
    };
  }