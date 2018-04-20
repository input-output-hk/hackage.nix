{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "queryparser-vertica";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "heli@uber.com";
        author = "Heli Wang, David Thomas, Matt Halverson";
        homepage = "";
        url = "";
        synopsis = "Parsing for Vertica SQL queries";
        description = "A library for parsing Vertica SQL queries into analyzable ASTs.\n\nThis library is to be used with the queryparser library, which\nprovides the common type definitions and analyses across the\ndifferent SQL dialects.";
        buildType = "Simple";
      };
      components = {
        queryparser-vertica = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.queryparser
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.aeson
            hsPkgs.yaml
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.QuickCheck
            hsPkgs.regex-tdfa
            hsPkgs.fixed-list
            hsPkgs.predicate-class
          ];
        };
      };
    }