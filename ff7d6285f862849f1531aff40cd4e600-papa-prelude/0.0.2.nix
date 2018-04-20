{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "papa-prelude";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/data61/papa-prelude";
        url = "";
        synopsis = "Prelude with only useful functions";
        description = "Prelude with only useful functions";
        buildType = "Custom";
      };
      components = {
        papa-prelude = {
          depends  = [
            hsPkgs.base
            hsPkgs.papa-prelude-core
            hsPkgs.papa-prelude-lens
            hsPkgs.papa-prelude-semigroupoids
            hsPkgs.papa-prelude-semigroups
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }