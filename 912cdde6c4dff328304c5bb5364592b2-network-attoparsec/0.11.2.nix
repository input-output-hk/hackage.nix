{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "network-attoparsec";
          version = "0.11.2";
        };
        license = "MIT";
        copyright = "(c) 2015 Leon Mergen";
        maintainer = "leon@solatis.com";
        author = "Leon Mergen";
        homepage = "http://github.com/solatis/haskell-network-attoparsec";
        url = "";
        synopsis = "Utility functions for running a parser against a socket";
        description = "Utility functions for running a parser against a socket, without the need of a bigger framework such as Pipes or Conduit.";
        buildType = "Simple";
      };
      components = {
        "network-attoparsec" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.transformers
            hsPkgs.exceptions
            hsPkgs.enclosed-exceptions
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.attoparsec
            hsPkgs.bytestring
          ];
        };
        tests = {
          "test-suite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.exceptions
              hsPkgs.transformers
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.network-simple
              hsPkgs.attoparsec
              hsPkgs.network-attoparsec
            ];
          };
        };
      };
    }