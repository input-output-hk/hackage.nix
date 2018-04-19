{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "pipes-transduce";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Daniel Diaz";
        maintainer = "diaz_carrete@yahoo.com";
        author = "Daniel Diaz";
        homepage = "";
        url = "";
        synopsis = "Interfacing pipes with foldl folds.";
        description = "A fold-like datatype for pipes Producers.";
        buildType = "Simple";
      };
      components = {
        pipes-transduce = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.bifunctors
            hsPkgs.foldl
            hsPkgs.free
            hsPkgs.pipes
            hsPkgs.pipes-concurrency
            hsPkgs.pipes-group
            hsPkgs.pipes-parse
            hsPkgs.pipes-safe
            hsPkgs.pipes-text
            hsPkgs.pipes-bytestring
            hsPkgs.void
            hsPkgs.conceit
            hsPkgs.lens-family-core
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.free
              hsPkgs.pipes
              hsPkgs.doctest
              hsPkgs.foldl
            ];
          };
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.foldl
              hsPkgs.pipes
              hsPkgs.pipes-transduce
            ];
          };
        };
      };
    }