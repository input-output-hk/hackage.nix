{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "casr-logbook-reports";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (C) 2016 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/casr-logbook-reports";
      url = "";
      synopsis = "CASR 61.345 logbook (casr-logbook) reports.";
      description = "<<https://i.imgur.com/p6LT40r.png>>\n\nCASR 61.345 Pilot Personal Logbook reports\n\n<<https://i.imgur.com/Lfhcmtg.png>>";
      buildType = "Custom";
    };
    components = {
      "casr-logbook-reports" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.casr-logbook)
          (hsPkgs.lens)
          (hsPkgs.time)
          (hsPkgs.containers)
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