{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "th-printf";
          version = "0.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "me@joelt.io";
        author = "Joel Taylor";
        homepage = "https://github.com/joelteon/th-printf";
        url = "";
        synopsis = "Compile-time printf";
        description = "Quasiquoters for printf: string, bytestring, text.";
        buildType = "Simple";
      };
      components = {
        th-printf = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        tests = {
          format = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.th-printf
            ];
          };
        };
      };
    }