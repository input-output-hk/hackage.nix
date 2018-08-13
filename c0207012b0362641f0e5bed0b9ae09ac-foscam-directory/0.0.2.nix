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
        name = "foscam-directory";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      homepage = "https://github.com/tonymorris/foscam-directory";
      url = "";
      synopsis = "Foscam File format";
      description = "Directory of Foscam File format";
      buildType = "Custom";
    };
    components = {
      "foscam-directory" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.trifecta)
          (hsPkgs.utf8-string)
          (hsPkgs.lens)
          (hsPkgs.pretty)
          (hsPkgs.foscam-filename)
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