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
        name = "radian";
        version = "0.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 NICTA Limited";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/NICTA/radian";
      url = "";
      synopsis = "Isomorphisms for measurements that use radians.";
      description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nIsomorphisms for measurements that use radians.";
      buildType = "Custom";
    };
    components = {
      "radian" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.profunctors)
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
            (hsPkgs.lens)
          ];
        };
      };
    };
  }