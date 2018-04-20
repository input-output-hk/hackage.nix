{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dictparser";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Mark Wotton, 2013";
        maintainer = "mwotton@gmail.com";
        author = "Mark Wotton";
        homepage = "http://github.com/mwotton/dictparser";
        url = "";
        synopsis = "Parsec parsers for the DICT format produced by dictfmt -t";
        description = "Parsec parsers for DICT";
        buildType = "Simple";
      };
      components = {
        dictparser = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.split
          ];
        };
        exes = {
          dictparser = {
            depends  = [
              hsPkgs.base
              hsPkgs.dictparser
              hsPkgs.parsec
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.dictparser
              hsPkgs.hspec
              hsPkgs.parsec
            ];
          };
        };
      };
    }