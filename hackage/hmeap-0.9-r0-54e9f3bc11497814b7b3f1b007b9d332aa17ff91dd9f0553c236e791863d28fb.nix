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
      specVersion = "1.8";
      identifier = {
        name = "hmeap";
        version = "0.9";
      };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape and others, 2007-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hmeap";
      url = "";
      synopsis = "Haskell Meapsoft Parser";
      description = "Parser for the anaylsis files produced by the\nMeapsoft feature extractor.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.delimited-text)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "hmeap-browse" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.delimited-text)
            (hsPkgs.hmeap)
            (hsPkgs.parsec)
          ];
        };
        "hmeap-parser" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.delimited-text)
            (hsPkgs.hmeap)
            (hsPkgs.parsec)
          ];
        };
        "hmeap-play" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.delimited-text)
            (hsPkgs.hmeap)
            (hsPkgs.hosc)
            (hsPkgs.hsc3)
            (hsPkgs.parsec)
          ];
        };
        "hmeap-plot" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.delimited-text)
            (hsPkgs.gnuplot)
            (hsPkgs.hmatrix)
            (hsPkgs.hmeap)
            (hsPkgs.parsec)
          ];
        };
        "hmeap-stat" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.delimited-text)
            (hsPkgs.hmatrix)
            (hsPkgs.hmeap)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }