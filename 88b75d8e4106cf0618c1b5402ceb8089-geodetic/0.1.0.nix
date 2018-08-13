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
        name = "geodetic";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013,2014 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/geodetic";
      url = "";
      synopsis = "Geodetic calculations";
      description = "Geodetic calculations including Vincenty and Great Circle using a Latitude and Longitude pair";
      buildType = "Custom";
    };
    components = {
      "geodetic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.coordinate)
          (hsPkgs.optional)
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
          ];
        };
      };
    };
  }