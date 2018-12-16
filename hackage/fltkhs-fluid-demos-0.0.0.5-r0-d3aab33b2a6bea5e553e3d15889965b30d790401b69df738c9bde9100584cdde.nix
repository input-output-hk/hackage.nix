{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { fastcompile = true; };
    package = {
      specVersion = "1.20";
      identifier = {
        name = "fltkhs-fluid-demos";
        version = "0.0.0.5";
      };
      license = "MIT";
      copyright = "";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "http://github.com/deech/fltkhs-fluid-demos";
      url = "";
      synopsis = "Fltkhs Fluid Demos";
      description = "Examples of using Fluid with FLTKHS";
      buildType = "Custom";
    };
    components = {
      exes = {
        "fltkhs-fluid-radio" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-fluid-tabs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-fluid-valuators" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-fluid-inactive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-fluid-fast-slow" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-fluid-tree" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fltkhs)
          ];
        };
      };
    };
  }