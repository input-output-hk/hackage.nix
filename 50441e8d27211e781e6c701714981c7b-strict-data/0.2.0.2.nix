{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "strict-data";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Alexander Thiemann <mail@athiemann.net>\n, 2017 factis research GmbH";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann\n, factis research GmbH";
        homepage = "https://github.com/agrafix/strict-data#readme";
        url = "";
        synopsis = "A collection of commonly used strict data structures";
        description = "A collection of commonly used strict data structures";
        buildType = "Simple";
      };
      components = {
        strict-data = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.aeson
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.fail
            hsPkgs.hashable
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.resourcet
            hsPkgs.strict
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.util-plus
            hsPkgs.vector
            hsPkgs.vector-algorithms
          ];
        };
        tests = {
          strict-data-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.strict-data
              hsPkgs.HTF
              hsPkgs.vector
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.containers
            ];
          };
          strict-data-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }