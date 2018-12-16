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
        name = "wavy";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2014 Robert Massaioli <robertmassaioli@gmail.com>";
      maintainer = "Robert Massaioli <robertmassaioli@gmail.com>";
      author = "Robert Massaioli <robertmassaioli@gmail.com>";
      homepage = "http://bitbucket.org/robertmassaioli/wavy";
      url = "";
      synopsis = "Process WAVE files in Haskell.";
      description = "Wavy was designed to be a fast and efficient method of extracting and writing PCM\ndata to and from WAV files. It is here to help you make fast use of Audio\ndata in your Haskell programs and thus encourage many more audio projects in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.riff)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.split)
          (hsPkgs.containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "wave-identity" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.split)
            (hsPkgs.pretty-show)
            (hsPkgs.wavy)
          ];
        };
        "wave-info" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.wavy)
          ];
        };
        "wave-split" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wavy)
            (hsPkgs.split)
            (hsPkgs.vector)
            (hsPkgs.filepath)
          ];
        };
        "wave-generate-sine" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wavy)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }