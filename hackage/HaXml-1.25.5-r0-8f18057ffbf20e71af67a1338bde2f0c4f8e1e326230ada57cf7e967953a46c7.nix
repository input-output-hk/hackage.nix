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
        name = "HaXml";
        version = "1.25.5";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "author";
      author = "Malcolm Wallace <Malcolm.Wallace@me.com>";
      homepage = "http://projects.haskell.org/HaXml/";
      url = "";
      synopsis = "Utilities for manipulating XML documents";
      description = "This version, 1.25.5 is a Non-Maintainer Upload (NMU). Report issues to the Hackage Trustees issue tracker.\n\nHaskell utilities for parsing, filtering, transforming and\ngenerating XML documents.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.pretty)
          (hsPkgs.random)
          (hsPkgs.polyparse)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
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