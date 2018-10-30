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
        name = "Kulitta";
        version = "2.2.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2016 Donya Quick";
      maintainer = "Donya Quick <donya.quick@yale.edu>";
      author = "Donya Quick <donya.quick@yale.edu>";
      homepage = "http://www.donyaquick.com/kulitta";
      url = "";
      synopsis = "Library for automated composition and musical learning";
      description = "Kulitta is a framework for automated composition that can also\nbe configured to run as a standalone AI for generating music\nin a particular style.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.Euterpea)
          (hsPkgs.UISF)
          (hsPkgs.parallel)
        ];
      };
    };
  }