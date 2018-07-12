{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lss";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dbp@dbpmail.net";
        author = "Daniel Patterson";
        homepage = "https://github.com/dbp/lss";
        url = "";
        synopsis = "Lexical Style Sheets - a language for writing styles that is focused around lexical (ie, static) scoping and re-use of large components.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "lss" = {
          depends  = [
            hsPkgs.base
            hsPkgs.language-css
            hsPkgs.language-css-attoparsec
            hsPkgs.xmlhtml
            hsPkgs.text
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.attoparsec
          ];
        };
        tests = {
          "test-lss" = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-css
              hsPkgs.language-css-attoparsec
              hsPkgs.containers
              hsPkgs.attoparsec
              hsPkgs.text
              hsPkgs.hspec2
              hsPkgs.lss
            ];
          };
        };
      };
    }