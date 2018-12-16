{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "IFS";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007, alpha";
      maintainer = "misc@NOSPAMalpheccar.org";
      author = "alpheccar";
      homepage = "http://www.alpheccar.org";
      url = "";
      synopsis = "Iterated Function System generation for Haskell";
      description = "Library to describe IFS and generate PPM pictures from the descriptions";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "IFS" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }