{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
      parsec = true;
      pretty = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "json";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2008 Galois Inc.";
        maintainer = "dons@galois.com";
        author = "Galois Inc.";
        homepage = "";
        url = "";
        synopsis = "Support for serialising Haskell to and from JSON";
        description = "JSON (JavaScript Object Notation) is a lightweight data-interchange\nformat. It is easy for humans to read and write. It is easy for\nmachines to parse and generate.  It is based on a subset of the\nJavaScript Programming Language, Standard ECMA-262 3rd Edition -\nDecember 1999.\n\nThis library provides a parser and pretty printer for converting\nbetween Haskell values and JSON.";
        buildType = "Simple";
      };
      components = {
        "json" = {
          depends  = if _flags.split-base
            then ([
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.bytestring
            ] ++ pkgs.lib.optional _flags.parsec hsPkgs.parsec) ++ pkgs.lib.optional _flags.pretty hsPkgs.pretty
            else [ hsPkgs.base ];
        };
      };
    }