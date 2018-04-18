{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "papa";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/data61/papa";
        url = "";
        synopsis = "Reasonable default import";
        description = "Reasonable default import";
        buildType = "Custom";
      };
      components = {
        papa = {
          depends  = [
            hsPkgs.base
            hsPkgs.papa-lens
            hsPkgs.papa-prelude
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