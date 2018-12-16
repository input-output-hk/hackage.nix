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
        name = "instant-zipper";
        version = "0.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "B.Schuur@students.uu.nl, R.Koot@students.uu.nl";
      author = "Bram Schuur, Ruud Koot";
      homepage = "";
      url = "";
      synopsis = "Heterogenous Zipper in Instant Generics";
      description = "This package contains a heterogenous Zipper and 2\nexamples of how to use it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.instant-generics)
          (hsPkgs.mtl)
        ];
      };
    };
  }