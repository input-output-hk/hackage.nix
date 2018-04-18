{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "substring-parser";
          version = "0.4.0.0";
        };
        license = "Apache-2.0";
        copyright = "2018 Yuji Yamamoto";
        maintainer = "whosekiteneverfly@gmail.com";
        author = "Yuji Yamamoto";
        homepage = "https://gitlab.com/igrep/substring-parser";
        url = "";
        synopsis = "Match / replace substrings with a parser combinators.";
        description = "See README.md";
        buildType = "Simple";
      };
      components = {
        substring-parser = {
          depends  = [
            hsPkgs.NoTrace
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.dlist
            hsPkgs.text
          ];
        };
        tests = {
          substring-parser-test = {
            depends  = [
              hsPkgs.NoTrace
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.substring-parser
              hsPkgs.text
            ];
          };
        };
      };
    }