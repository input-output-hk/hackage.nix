{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      splitbase = true;
      bytestringinbase = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HaXml";
        version = "1.19.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "author";
      author = "Malcolm Wallace <Malcolm.Wallace@cs.york.ac.uk>";
      homepage = "http://www.cs.york.ac.uk/fp/HaXml/";
      url = "";
      synopsis = "Utilities for manipulating XML documents";
      description = "Haskell utilities for parsing, filtering, transforming and\ngenerating XML documents.";
      buildType = "Simple";
    };
    components = {
      "HaXml" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.polyparse)
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
        "Canonicalise" = {};
        "CanonicaliseLazy" = {};
        "Xtract" = {};
        "XtractLazy" = {};
        "Validate" = {};
        "MkOneOf" = {};
        "DtdToHaskell" = {};
      };
    };
  }