{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming-attoparsec";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Colin Woodbury, colingw@gmail.com";
        author = "Michael Thompson";
        homepage = "https://github.com/haskell-streaming/streaming-attoparsec";
        url = "";
        synopsis = "Attoparsec integration for the streaming ecosystem";
        description = "Attoparsec integration for the streaming ecosystem.";
        buildType = "Simple";
      };
      components = {
        "streaming-attoparsec" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.streaming
            hsPkgs.streaming-bytestring
          ];
        };
        tests = {
          "streaming-attoparsec-test" = {
            depends  = [
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.streaming
              hsPkgs.streaming-attoparsec
              hsPkgs.streaming-bytestring
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }