{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "xml-enumerator-combinators";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "aristidb@googlemail.com";
        author = "Aristid Breitkreuz";
        homepage = "";
        url = "";
        synopsis = "Parser combinators for xml-enumerator and compatible XML parsers.";
        description = "Parser combinators for xml-enumerator and compatible XML parsers. The aim is to provide advanced parser combinators to eliminate\ntiresome repetition of boilerplate in streaming XML parsers.";
        buildType = "Simple";
      };
      components = {
        "xml-enumerator-combinators" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.enumerator
            hsPkgs.xml-types
            hsPkgs.xml-enumerator
          ];
        };
        exes = {
          "runtests" = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }