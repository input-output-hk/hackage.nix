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
          name = "sys-process";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 NICTA Limited";
        maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
        homepage = "https://github.com/NICTA/sys-process";
        url = "";
        synopsis = "A replacement for System.Exit and System.Process.";
        description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nA replacement for System.Exit and System.Process.";
        buildType = "Custom";
      };
      components = {
        sys-process = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.bifunctors
            hsPkgs.lens
            hsPkgs.transformers
            hsPkgs.process
            hsPkgs.notzero
            hsPkgs.filepath
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