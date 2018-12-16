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
        name = "netrium";
        version = "0.6.0";
      };
      license = "MIT";
      copyright = "2009-2015 Anthony Waite, Dave Hewett, Shaun Laurens and other contributors";
      maintainer = "Well-Typed LLP";
      author = "Well-Typed LLP";
      homepage = "";
      url = "";
      synopsis = "Contract normaliser and simulator";
      description = "Netrium enables financial engineers to precisely describe and execute both simple and exotic contracts with both financial and physical delivery.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.HaXml)
        ];
      };
      exes = {
        "normalise" = {
          depends = [
            (hsPkgs.netrium)
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.HaXml)
          ];
        };
        "simulate" = {
          depends = [
            (hsPkgs.netrium)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HaXml)
            (hsPkgs.pretty)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
        "visualise" = {
          depends = [
            (hsPkgs.netrium)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.HaXml)
          ];
        };
      };
    };
  }