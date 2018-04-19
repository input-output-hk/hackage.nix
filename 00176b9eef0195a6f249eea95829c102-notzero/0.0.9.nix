{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "notzero";
          version = "0.0.9";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 NICTA Limited";
        maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
        homepage = "https://github.com/NICTA/notzero";
        url = "";
        synopsis = "A data type for representing numeric values, except zero.";
        description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nA data type for representing numeric values, except zero. This might be useful in working with process exit codes.";
        buildType = "Custom";
      };
      components = {
        notzero = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.bifunctors
            hsPkgs.lens
            hsPkgs.transformers
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