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
        name = "separated";
        version = "0.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/separated";
      url = "";
      synopsis = "A data type with elements separated by values";
      description = "A data type with elements separated by values";
      buildType = "Custom";
    };
    components = {
      "separated" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
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