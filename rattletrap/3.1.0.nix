{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rattletrap";
          version = "3.1.0";
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
            hsPkgs.base
            hsPkgs.bimap
            hsPkgs.binary
            hsPkgs.binary-bits
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-binary-ieee754
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        exes = {
          rattletrap = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bimap
              hsPkgs.binary
              hsPkgs.binary-bits
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-binary-ieee754
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.rattletrap
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bimap
              hsPkgs.binary
              hsPkgs.binary-bits
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-binary-ieee754
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.rattletrap
              hsPkgs.temporary
            ];
          };
        };
      };
    }