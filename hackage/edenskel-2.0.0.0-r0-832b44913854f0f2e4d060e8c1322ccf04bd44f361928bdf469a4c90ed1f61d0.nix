{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { par = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "edenskel";
        version = "2.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eden@mathematik.uni-marburg.de";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Semi-explicit parallel programming skeleton library";
      description = "This package provides a skeleton library for semi-explicit parallel programming with Eden.";
      buildType = "Simple";
    };
    components = {
      "edenskel" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.edenmodules)
          (hsPkgs.parallel)
        ];
      };
    };
  }