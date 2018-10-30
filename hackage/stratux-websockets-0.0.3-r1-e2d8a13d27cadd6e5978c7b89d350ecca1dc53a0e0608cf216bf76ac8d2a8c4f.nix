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
        name = "stratux-websockets";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/stratux-websockets";
      url = "";
      synopsis = "A library for using websockets with stratux";
      description = "A library for using websockets with stratux <http://stratux.me/>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stratux-types)
          (hsPkgs.websockets)
          (hsPkgs.transformers)
          (hsPkgs.aeson)
          (hsPkgs.either)
          (hsPkgs.text)
          (hsPkgs.network)
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