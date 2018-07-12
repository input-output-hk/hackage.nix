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
          name = "casr-logbook-reports-meta";
          version = "0.0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (C) 2016 Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/casr-logbook-reports-meta";
        url = "";
        synopsis = "Reports on meta-information about entries in a CASR 61.345 logbook (casr-logbook)";
        description = "<<https://i.imgur.com/p6LT40r.png>>\n\nReports on meta-information about entries in a CASR 61.345 logbook (casr-logbook)\n\n<<https://i.imgur.com/Lfhcmtg.png>>";
        buildType = "Custom";
      };
      components = {
        "casr-logbook-reports-meta" = {
          depends  = [
            hsPkgs.base
            hsPkgs.casr-logbook
            hsPkgs.casr-logbook-meta
            hsPkgs.lens
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