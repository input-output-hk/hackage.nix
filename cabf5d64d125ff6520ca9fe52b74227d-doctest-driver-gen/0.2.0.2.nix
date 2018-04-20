{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "doctest-driver-gen";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017-2018 Hexirp";
        maintainer = "https://github.com/Hexirp/doctest-driver-gen/issues";
        author = "Hexirp";
        homepage = "https://github.com/Hexirp/doctest-driver-gen#readme";
        url = "";
        synopsis = "Generate driver file for doctest's cabal integration";
        description = "doctest-driver-gen is a doctest's driver file generator.\nIt lets you automatically generate driver file for\ndoctest's cabal integration.";
        buildType = "Simple";
      };
      components = {
        doctest-driver-gen = {
          depends  = [
            hsPkgs.base
            hsPkgs.doctest
          ];
        };
        exes = {
          doctest-driver-gen = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest-driver-gen
            ];
          };
        };
        tests = {
          doctest-driver-gen-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.doctest-driver-gen
            ];
          };
        };
      };
    }