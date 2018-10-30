{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "stratux";
        version = "0.0.9";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2017 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/stratux";
      url = "";
      synopsis = "A library for stratux";
      description = "A library for stratux <http://stratux.me/>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stratux-types)
          (hsPkgs.stratux-http)
          (hsPkgs.stratux-websockets)
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