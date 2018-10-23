{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "reform";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw, Jasper Van der Jeugt, SeeReason Partners LLC";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw, Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "reform is an HTML form generation and validation library";
      description = "reform follows in the footsteps of formlets and\ndigestive-functors <= 0.2. It provides a\ntype-safe and composable method for generating\nan HTML form that includes validation.";
      buildType = "Simple";
    };
    components = {
      "reform" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
      };
    };
  }