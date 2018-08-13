{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      fastcompile = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.20";
      identifier = {
        name = "fltkhs-demos";
        version = "0.0.0.7";
      };
      license = "MIT";
      copyright = "";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "http://github.com/deech/fltkhs-demos";
      url = "";
      synopsis = "FLTKHS demos. Please scroll to the bottom for more information.";
      description = "FLTKHS demos moved to a separate package to keep the core package free of additional dependencies.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "fltkhs-threads" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
            (hsPkgs.stm)
          ];
        };
        "fltkhs-pack" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-tile" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-nativefilechooser-simple-app" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-table-as-container" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-texteditor-simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-textdisplay-with-colors" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-doublebuffer" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-make-tree" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-tree-simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-table-spreadsheet-with-keyboard-nav" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-table-simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-table-sort" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
            (hsPkgs.process)
          ];
        };
        "fltkhs-arc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
          ];
        };
        "fltkhs-bitmap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
            (hsPkgs.bytestring)
          ];
        };
        "fltkhs-boxtype" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
            (hsPkgs.bytestring)
          ];
        };
        "fltkhs-browser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
            (hsPkgs.bytestring)
          ];
        };
        "fltkhs-clock" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }