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
        name = "rainbow";
        version = "0.30.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013-2018 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "https://www.github.com/massysett/rainbow";
      url = "";
      synopsis = "Print text to terminal with colors and effects";
      description = "";
      buildType = "Simple";
    };
    components = {
      "rainbow" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lens-simple)
          (hsPkgs.process)
          (hsPkgs.text)
        ];
      };
      tests = {
        "colorTest" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens-simple)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
        "rainbow-instances" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens-simple)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
        "test256color" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens-simple)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
        "test8color" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens-simple)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
      };
    };
  }