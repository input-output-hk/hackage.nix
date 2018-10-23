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
        name = "dimensional-codata";
        version = "2014.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "douglas.mcclean@gmail.com";
      author = "Douglas McClean";
      homepage = "https://github.com/dmcclean/dimensional-codata";
      url = "";
      synopsis = "CODATA Recommended Physical Constants with Dimensional Types";
      description = "The dimensional-codata package provides a selection of the CODATA recommended values for fundamental\nphysical constants for use with the dimensional library for physical quantities and units.\nMajor version numbers represent the date of issue of the recommended values.";
      buildType = "Simple";
    };
    components = {
      "dimensional-codata" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.dimensional)
          (hsPkgs.numtype-dk)
        ];
      };
    };
  }