{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      splitbase = true;
      bytestringinbase = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HaXml";
        version = "1.25.3";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "author";
      author = "Malcolm Wallace <Malcolm.Wallace@me.com>";
      homepage = "http://projects.haskell.org/HaXml/";
      url = "";
      synopsis = "Utilities for manipulating XML documents";
      description = "Haskell utilities for parsing, filtering, transforming and\ngenerating XML documents.";
      buildType = "Simple";
    };
    components = {
      "HaXml" = {
        depends  = ([
          (hsPkgs.polyparse)
          (hsPkgs.filepath)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.pretty)
            (hsPkgs.random)
            (hsPkgs.containers)
          ]
          else [
            (hsPkgs.base)
          ])) ++ (if flags.bytestringinbase
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]);
      };
      exes = {
        "Canonicalise" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HaXml)
            (hsPkgs.pretty)
          ];
        };
        "CanonicaliseLazy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HaXml)
            (hsPkgs.pretty)
          ];
        };
        "Xtract" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HaXml)
            (hsPkgs.pretty)
          ];
        };
        "Validate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HaXml)
          ];
        };
        "MkOneOf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HaXml)
          ];
        };
        "DtdToHaskell" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HaXml)
            (hsPkgs.pretty)
          ];
        };
        "XsdToHaskell" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HaXml)
            (hsPkgs.pretty)
            (hsPkgs.polyparse)
            (hsPkgs.directory)
          ];
        };
        "FpMLToHaskell" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HaXml)
            (hsPkgs.pretty)
            (hsPkgs.polyparse)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }