{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = {
        name = "fltkhs-fluid-examples";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "http://github.com/deech/fltkhs-fluid-examples";
      url = "";
      synopsis = "Fltkhs Fluid Examples";
      description = "Examples of using Fluid with FLTKHS";
      buildType = "Custom";
    };
    components = {
      exes = {
        "fltkhs-fluid-radio" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-fluid-tabs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-fluid-valuators" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-fluid-inactive" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-fluid-fast-slow" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-fluid-tree" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fltkhs)
          ];
        };
      };
    };
  }