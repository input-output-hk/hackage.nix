{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "purescript-bridge";
          version = "0.3.0.0";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "robert.klotzner@gmx.at";
        author = "Robert Klotzner";
        homepage = "";
        url = "";
        synopsis = "Generate PureScript data types from Haskell data types";
        description = "";
        buildType = "Simple";
      };
      components = {
        "purescript-bridge" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.generic-deriving
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.HUnit
              hsPkgs.purescript-bridge
            ];
          };
        };
      };
    }