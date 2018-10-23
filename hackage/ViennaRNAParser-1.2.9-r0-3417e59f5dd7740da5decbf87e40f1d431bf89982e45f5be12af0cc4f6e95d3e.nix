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
        version = "1.2.9";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "florian.eggenhofer@univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Libary for parsing ViennaRNA package output";
      description = "Currently contains parsers and datatypes for: RNAalifold, RNAcode, RNAdistance, RNAcofold, RNAfold, RNAplex, RNAup, RNAz.\n\nFor more information on the ViennaRNA package refer to <http://www.tbi.univie.ac.at/RNA/>.\n\nThe libary is tested with Version 2.2.4 of the ViennaRNA package.";
      buildType = "Simple";
    };
    components = {
      "ViennaRNAParser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.ViennaRNAParser)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }