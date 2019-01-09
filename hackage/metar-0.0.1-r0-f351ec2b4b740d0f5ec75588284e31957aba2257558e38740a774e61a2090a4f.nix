{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "metar"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@sıɹɹoɯʇ>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@sıɹɹoɯʇ>";
      homepage = "https://github.com/tonymorris/metar";
      url = "";
      synopsis = "Australian METAR";
      description = "Obtain Australian METAR from Bureau of Meteorology (BOM).\n\nIf that fails, get the METAR from NOAA.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.lens)
          (hsPkgs.network-uri)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.tagsoup)
          (hsPkgs.tagsoup-selection)
          (hsPkgs.transformers)
          (hsPkgs.deriving-compat)
          ];
        };
      exes = { "metar" = { depends = [ (hsPkgs.base) (hsPkgs.metar) ]; }; };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.checkers)
            (hsPkgs.metar)
            (hsPkgs.lens)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }