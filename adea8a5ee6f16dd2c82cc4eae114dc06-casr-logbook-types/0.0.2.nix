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
        name = "casr-logbook-types";
        version = "0.0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (C) 2016 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/casr-logbook-types";
      url = "";
      synopsis = "CASR 61.345 Pilot Personal Logbook";
      description = "<<https://i.imgur.com/p6LT40r.png>>\n\nCASR 61.345 Pilot Personal Logbook\n\n<<https://i.imgur.com/Lfhcmtg.png>>";
      buildType = "Custom";
    };
    components = {
      "casr-logbook-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.digit)
          (hsPkgs.time)
          (hsPkgs.lens)
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