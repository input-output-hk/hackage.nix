{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "HaXml";
        version = "1.13.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "";
      author = "Malcolm Wallace <Malcolm.Wallace@cs.york.ac.uk>";
      homepage = "http://www.cs.york.ac.uk/fp/HaXml/";
      url = "";
      synopsis = "Utilities for manipulating XML documents";
      description = "Haskell utilities for parsing, filtering, transforming and\ngenerating XML documents.";
      buildType = "Custom";
    };
    components = {
      "HaXml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
      };
      exes = {
        "Canonicalise" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
          ];
        };
        "Xtract" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
          ];
        };
        "Validate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
          ];
        };
        "MkOneOf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
          ];
        };
        "DtdToHaskell" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }