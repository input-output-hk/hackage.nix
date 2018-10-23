{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ViennaRNAParser";
        version = "1.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "florian.eggenhofer@univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Libary for parsing ViennaRNA package output";
      description = "Currently contains parsers and datatypes for: RNAplex, RNAz. The libary is tested with Version >2.0 of the ViennaRNA package.";
      buildType = "Simple";
    };
    components = {
      "ViennaRNAParser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
    };
  }