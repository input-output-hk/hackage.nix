{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "casr-logbook-meta";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (C) 2016 Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/casr-logbook-meta";
        url = "";
        synopsis = "Meta-information about entries in a CASR 61.345 logbook (casr-logbook)";
        description = "<<https://i.imgur.com/p6LT40r.png>>\n\nCASR 61.345 Pilot Personal Logbook Meta-information about entries\n\n<<https://i.imgur.com/Lfhcmtg.png>>";
        buildType = "Custom";
      };
      components = {
        casr-logbook-meta = {
          depends  = [
            hsPkgs.base
            hsPkgs.casr-logbook
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