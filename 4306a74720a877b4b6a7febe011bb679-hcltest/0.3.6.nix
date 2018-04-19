{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hcltest";
          version = "0.3.6";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Benno Fünfstück";
        maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
        author = "Benno Fünfstück";
        homepage = "http://github.com/bennofs/hcltest/";
        url = "";
        synopsis = "A testing library for command line applications.";
        description = "Allows to write tests for command line applications using haskell.";
        buildType = "Custom";
      };
      components = {
        hcltest = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.free
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.transformers
            hsPkgs.either
            hsPkgs.directory
            hsPkgs.dlist
            hsPkgs.temporary
            hsPkgs.mtl
            hsPkgs.lens
            hsPkgs.tasty
            hsPkgs.tagged
            hsPkgs.mmorph
            hsPkgs.random-shuffle
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.optparse-applicative
            hsPkgs.monad-control
            hsPkgs.transformers-base
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }