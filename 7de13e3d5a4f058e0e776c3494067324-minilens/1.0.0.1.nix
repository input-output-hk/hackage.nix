{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "minilens";
          version = "1.0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "2008-2016 Ramin Honary";
        maintainer = "ramin.honary@gmail.com";
        author = "Ramin Honary";
        homepage = "https://github.com/RaminHAL9001/minilens";
        url = "";
        synopsis = "A minimalistic lens library, providing only the simplest, most basic lens functionality.";
        description = "\nLenses satisfy the properties of the Category type class, and are used\nto inspect and update individual elements of a data structue in a type-safe\nway. This library provides the simplest possible data types satisfying\nthese properties.\n\nThe \"minilens\" package aims to provide a very simple improvement on\nHaskell's record syntax: the idea of composable record accessors\ncalled 'Lens'es.\n\nAs of yet, there are no fancy Template Haskell APIs for generating lenses\nprogrammatically; you are expected to write your lenses by hand. Some handy\nhandy combinator functions are provided to help you do this.\n\nThis library was originally part of the Dao package, but has been branched\ninto it's own package in the hopes that it will be useful in a wider\nvariety of projects.";
        buildType = "Simple";
      };
      components = {
        minilens = {
          depends  = [
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.base
          ];
        };
      };
    }