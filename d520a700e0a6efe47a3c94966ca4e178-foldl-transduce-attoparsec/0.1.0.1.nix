{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "foldl-transduce-attoparsec";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Daniel Diaz";
        maintainer = "diaz_carrete@yahoo.com";
        author = "Daniel Diaz";
        homepage = "";
        url = "";
        synopsis = "Attoparsec and foldl-transduce integration.";
        description = "Attoparsec and foldl-transduce integration.";
        buildType = "Simple";
      };
      components = {
        foldl-transduce-attoparsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.foldl-transduce
            hsPkgs.attoparsec
            hsPkgs.transformers
            hsPkgs.monoid-subclasses
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.transformers
              hsPkgs.foldl
              hsPkgs.foldl-transduce
              hsPkgs.foldl-transduce-attoparsec
              hsPkgs.attoparsec
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.doctest
            ];
          };
        };
      };
    }