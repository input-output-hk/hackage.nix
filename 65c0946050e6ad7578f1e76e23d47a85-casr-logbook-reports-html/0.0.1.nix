{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "casr-logbook-reports-html";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (C) 2016 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/casr-logbook-reports-html";
      url = "";
      synopsis = "CASR 61.345 logbook (casr-logbook) reports HTML output";
      description = "<<https://i.imgur.com/p6LT40r.png>>\n\nCASR 61.345 Pilot Personal Logbook reports HTML output\n\n<<https://i.imgur.com/Lfhcmtg.png>>";
      buildType = "Custom";
    };
    components = {
      "casr-logbook-reports-html" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.casr-logbook)
          (hsPkgs.casr-logbook-html)
          (hsPkgs.casr-logbook-reports)
          (hsPkgs.containers)
          (hsPkgs.lucid)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }