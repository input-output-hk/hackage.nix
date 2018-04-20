{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rattletrap";
          version = "4.0.6";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak";
        author = "";
        homepage = "https://github.com/tfausak/rattletrap#readme";
        url = "";
        synopsis = "Parse and generate Rocket League replays.";
        description = "Rattletrap parses and generates Rocket League replays.";
        buildType = "Simple";
      };
      components = {
        rattletrap = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.binary-bits
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          rattletrap = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.binary-bits
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.rattletrap
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.binary-bits
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.rattletrap
              hsPkgs.template-haskell
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }