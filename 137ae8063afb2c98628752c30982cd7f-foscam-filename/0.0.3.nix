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
          name = "foscam-filename";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Tony Morris";
        maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
        homepage = "https://github.com/tonymorris/foscam-filename";
        url = "";
        synopsis = "Foscam File format";
        description = "Foscam File format";
        buildType = "Custom";
      };
      components = {
        "foscam-filename" = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.bifunctors
            hsPkgs.lens
            hsPkgs.parsers
            hsPkgs.digit
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
              hsPkgs.parsec
            ];
          };
        };
      };
    }