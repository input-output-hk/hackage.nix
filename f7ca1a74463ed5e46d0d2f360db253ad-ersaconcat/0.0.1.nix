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
        name = "ersaconcat";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/ersaconcat";
      url = "";
      synopsis = "A script to concatenate AIP ERSA";
      description = "A script to concatenate AIP ERSA";
      buildType = "Custom";
    };
    components = {
      "ersaconcat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network-uri)
          (hsPkgs.HTTP)
          (hsPkgs.tagsoup)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.process)
        ];
      };
      exes = {
        "ersaconcat" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network-uri)
            (hsPkgs.HTTP)
            (hsPkgs.tagsoup)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
          ];
        };
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