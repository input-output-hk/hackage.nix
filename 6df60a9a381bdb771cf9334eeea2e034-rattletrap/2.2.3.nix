{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rattletrap";
          version = "2.2.3";
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
            hsPkgs.aeson-casing
            hsPkgs.base
            hsPkgs.bimap
            hsPkgs.binary
            hsPkgs.binary-bits
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-binary-ieee754
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        exes = {
          rattletrap = {
            depends  = [
              hsPkgs.base
              hsPkgs.rattletrap
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.rattletrap
              hsPkgs.temporary
            ];
          };
        };
      };
    }