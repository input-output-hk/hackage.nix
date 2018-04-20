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
          name = "radian";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 NICTA Limited";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/NICTA/radian";
        url = "";
        synopsis = "A floating-point wrapper for measurements that use radians.";
        description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nA floating-point wrapper for measurements that use radians.";
        buildType = "Custom";
      };
      components = {
        radian = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
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