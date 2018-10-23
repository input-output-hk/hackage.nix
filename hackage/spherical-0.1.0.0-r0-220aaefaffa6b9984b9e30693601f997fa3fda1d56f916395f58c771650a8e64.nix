{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "spherical";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vanessa.mchale@iohk.io";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Geometry on a sphere";
      description = "Functions in pure Haskell for geometric computations on the surface of a sphere.";
      buildType = "Simple";
    };
    components = {
      "spherical" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.composition-prelude)
        ];
      };
    };
  }