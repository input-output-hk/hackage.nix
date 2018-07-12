{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ebnf-bff";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ma302fh@gold.ac.uk";
        author = "Lokidottir";
        homepage = "";
        url = "";
        synopsis = "Parser combinators & EBNF, BFFs!";
        description = "A library & program that builds parsers from ISO EBNF using Parsec";
        buildType = "Simple";
      };
      components = {
        "ebnf-bff" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.aeson
            hsPkgs.text
          ];
        };
        exes = {
          "ebnf-parse" = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.ebnf-bff
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.cond
            ];
          };
        };
      };
    }