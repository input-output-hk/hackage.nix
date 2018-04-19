{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "casr-logbook-reports-meta-html";
          version = "0.0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (C) 2016 Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/casr-logbook-reports-meta-html";
        url = "";
        synopsis = "HTML output for reports on meta-information about entries in a CASR 61.345 logbook";
        description = "<<https://i.imgur.com/p6LT40r.png>>\n\nHTML output for reports on meta-information about entries in a CASR 61.345 logbook\n\n<<https://i.imgur.com/Lfhcmtg.png>>";
        buildType = "Custom";
      };
      components = {
        casr-logbook-reports-meta-html = {
          depends  = [
            hsPkgs.base
            hsPkgs.casr-logbook-types
            hsPkgs.casr-logbook-meta
            hsPkgs.casr-logbook-meta-html
            hsPkgs.casr-logbook-reports
            hsPkgs.casr-logbook-reports-meta
            hsPkgs.casr-logbook-reports-html
            hsPkgs.lucid
            hsPkgs.lens
            hsPkgs.text
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