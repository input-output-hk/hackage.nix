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
      specVersion = "1.10";
      identifier = {
        name = "diophantine";
        version = "0.2.1.0";
      };
      license = "GPL-2.0-only";
      copyright = "Joe Jevnik 2014";
      maintainer = "Joe Jevnik <joejev@gmail.com>";
      author = "Joe Jevnik";
      homepage = "https://github.com/llllllllll/Math.Diophantine";
      url = "";
      synopsis = "A quadratic diophantine equation solving library.";
      description = "A library for solving quadratic diophantine equations.\n\nThis library is designed to solve for equations where:\n\n* The form is: ax^2 + bxy + cy^2 + dx + ey + f = 0\n\n* a,b,c,d,e,f are integers.\n\n* Solutions are restricted to x and y are also integers.\n\nThis library breaks down equations based on their type to solve them most\nefficiently. This library supports linear, simple hyperbolic, eliptical, and\nparabolic equations, with hyperbolics on the way.\n\nPlease send feedback or bugs to joejev\\@gmail.com.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
        build-tools = [
          (hsPkgs.buildPackages.happy)
        ];
      };
    };
  }