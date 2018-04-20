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
          name = "coordinate";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013-2016 NICTA Limited";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/NICTA/coordinate";
        url = "";
        synopsis = "A representation of latitude and longitude";
        description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nA representation of latitude and longitude";
        buildType = "Custom";
      };
      components = {
        coordinate = {
          depends  = [
            hsPkgs.base
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