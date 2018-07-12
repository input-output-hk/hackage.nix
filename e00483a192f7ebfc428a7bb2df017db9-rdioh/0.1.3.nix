{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rdioh";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Aditya Bhargava <adit at adit.io>";
        author = "Aditya Bhargava";
        homepage = "";
        url = "";
        synopsis = "A Haskell wrapper for Rdio's API.";
        description = "This library implements methods for Rdio's API.\nIt supports 2-legged and 3-legged OAuth. See Rdio's API for reference: http:\\/\\/developer.rdio.com\\/docs\\/read\\/rest\\/Methods";
        buildType = "Simple";
      };
      components = {
        "rdioh" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.MissingH
            hsPkgs.bytestring
            hsPkgs.json
            hsPkgs.hoauth
            hsPkgs.urlencoded
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.transformers
          ];
        };
        exes = {
          "rdioh" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.MissingH
              hsPkgs.bytestring
              hsPkgs.json
              hsPkgs.hoauth
              hsPkgs.urlencoded
              hsPkgs.aeson
              hsPkgs.containers
              hsPkgs.transformers
            ];
          };
          "rdioh-spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.rdioh
              hsPkgs.mtl
              hsPkgs.MissingH
              hsPkgs.bytestring
              hsPkgs.json
              hsPkgs.hoauth
              hsPkgs.urlencoded
              hsPkgs.aeson
              hsPkgs.containers
              hsPkgs.transformers
            ];
          };
        };
      };
    }