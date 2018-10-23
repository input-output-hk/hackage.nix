{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { visual = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rainbow";
        version = "0.28.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013-2015 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "https://www.github.com/massysett/rainbow";
      url = "";
      synopsis = "Print text to terminal with colors and effects";
      description = "rainbow helps you print Text chunks to a terminal with colors and effects\nsuch as bold, underlining, etc. You pair each Text with a description\nof how it should appear. Rainbow works with both 8-color and 256-color\nterminals.";
      buildType = "Simple";
    };
    components = {
      "rainbow" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.process)
          (hsPkgs.lens-simple)
        ];
      };
      tests = {
        "rainbow-instances" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.lens-simple)
          ];
        };
        "test8color" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.lens-simple)
          ];
        };
        "test256color" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.lens-simple)
          ];
        };
        "colorTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.lens-simple)
          ];
        };
      };
    };
  }