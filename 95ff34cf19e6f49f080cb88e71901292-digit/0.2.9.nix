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
          name = "digit";
          version = "0.2.9";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010-2016 NICTA Limited";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/NICTA/digit";
        url = "";
        synopsis = "A data-type representing digits 0-9 and other combinations";
        description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\n@Digit@ is a data-type that represents the digits 0-9 and other combinations.";
        buildType = "Custom";
      };
      components = {
        "digit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.parsers
            hsPkgs.semigroups
            hsPkgs.template-haskell
            hsPkgs.papa
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