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
          name = "casr-logbook";
          version = "0.3.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (C) 2016 Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/casr-logbook";
        url = "";
        synopsis = "CASR 61.345 Pilot Personal Logbook";
        description = "<<https://i.imgur.com/p6LT40r.png>>\n\nCASR 61.345 Pilot Personal Logbook\n\n<<https://i.imgur.com/Lfhcmtg.png>>";
        buildType = "Custom";
      };
      components = {
        "casr-logbook" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lucid
            hsPkgs.digit
            hsPkgs.time
            hsPkgs.lucid
            hsPkgs.lens
            hsPkgs.digit
            hsPkgs.time
            hsPkgs.text
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