{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "HaXml";
          version = "1.19";
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
        HaXml = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.polyparse
          ];
        };
        exes = {
          Canonicalise = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.polyparse
            ];
          };
          CanonicaliseLazy = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.polyparse
            ];
          };
          Xtract = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.polyparse
            ];
          };
          XtractLazy = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.polyparse
            ];
          };
          Validate = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.polyparse
            ];
          };
          MkOneOf = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.polyparse
            ];
          };
          DtdToHaskell = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.polyparse
            ];
          };
        };
      };
    }