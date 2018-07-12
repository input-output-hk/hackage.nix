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
          name = "casr-logbook-html";
          version = "0.0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (C) 2016 Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/casr-logbook-html";
        url = "";
        synopsis = "CASR 61.345 Pilot Personal Logbook HTML output";
        description = "<<https://i.imgur.com/p6LT40r.png>>\n\nCASR 61.345 Pilot Personal Logbook HTML output\n\n<<https://i.imgur.com/Lfhcmtg.png>>";
        buildType = "Custom";
      };
      components = {
        "casr-logbook-html" = {
          depends  = [
            hsPkgs.base
            hsPkgs.casr-logbook-types
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