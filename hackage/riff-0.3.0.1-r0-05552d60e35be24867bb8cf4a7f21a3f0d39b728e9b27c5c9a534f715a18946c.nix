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
        name = "riff";
        version = "0.3.0.1";
      };
      license = "MIT";
      copyright = "(c) 2014 Robert Massaioli";
      maintainer = "robertmassaioli@gmail.com";
      author = "Robert Massaioli";
      homepage = "https://bitbucket.org/robertmassaioli/riff/overview";
      url = "";
      synopsis = "RIFF parser for Haskell";
      description = "This library provides a RIFF parser for Haskell for easy manipulation\nof common file formats like WAVE and RIFF container AVI files.";
      buildType = "Simple";
    };
    components = {
      "riff" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "riff-structure" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.riff)
          ];
        };
        "riff-identity" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.riff)
          ];
        };
        "riff-convert" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.riff)
          ];
        };
      };
    };
  }