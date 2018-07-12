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
          name = "validation";
          version = "0.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 NICTA Limited";
        maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>";
        homepage = "https://github.com/tonymorris/validation";
        url = "";
        synopsis = "A data-type like Either but with an accumulating Applicative";
        description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nA data-type like Either but with an accumulating Applicative";
        buildType = "Custom";
      };
      components = {
        "validation" = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.bifunctors
            hsPkgs.lens
            hsPkgs.transformers
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
            ];
          };
        };
      };
    }