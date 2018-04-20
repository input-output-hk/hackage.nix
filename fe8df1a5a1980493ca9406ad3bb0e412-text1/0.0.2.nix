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
          name = "text1";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 NICTA Limited";
        maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
        homepage = "https://github.com/NICTA/text1";
        url = "";
        synopsis = "Non-empty values of `Data.Text`.";
        description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nNon-empty values of `Data.Text`.";
        buildType = "Custom";
      };
      components = {
        text1 = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.lens
            hsPkgs.binary
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