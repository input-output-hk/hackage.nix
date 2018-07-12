{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "relapse";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "2017 Ilya Ostrovskiy";
        maintainer = "firstname at thenumbertwohundred thewordproof dotcc";
        author = "Ilya Ostrovskiy";
        homepage = "https://github.com/iostat/relapse#readme";
        url = "";
        synopsis = "Sensible RLP encoding";
        description = "An implementation of RLP as specified in the Ethereum Wiki, using Attoparsec";
        buildType = "Simple";
      };
      components = {
        "relapse" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
          ];
        };
        tests = {
          "relapse-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.base16-bytestring
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.aeson
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.include-file
              hsPkgs.relapse
            ];
          };
        };
      };
    }