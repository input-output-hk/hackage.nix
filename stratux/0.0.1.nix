{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stratux";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2016 Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/stratux";
        url = "";
        synopsis = "A library for stratux";
        description = "A library for reading JSON output from stratux http://stratux.me/";
        buildType = "Custom";
      };
      components = {
        stratux = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.aeson
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.scientific
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