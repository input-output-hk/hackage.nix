{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Fin";
        version = "0.2.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Finite totally-ordered sets";
      description = "";
      buildType = "Simple";
    };
    components = {
      "Fin" = {
        depends  = [
          (hsPkgs.peano)
          (hsPkgs.base)
          (hsPkgs.natural-induction)
        ];
      };
    };
  }