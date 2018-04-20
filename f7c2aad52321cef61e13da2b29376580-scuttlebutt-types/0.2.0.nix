{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scuttlebutt-types";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 bkil.hu, Peter Ferenc Hajdu, Joey Hess";
        maintainer = "Joey Hess <id@joeyh.name>";
        author = "bkil.hu, Peter Ferenc Hajdu, Joey Hess";
        homepage = "";
        url = "";
        synopsis = "generic types for Secure Scuttlebutt";
        description = "Secure Scuttlebutt is a database of unforgeable append-only feeds,\noptimized for efficient replication for peer to peer protocols.\n\nThis library contains data types for common Scuttlebutt messages,\nincluding JSON serialization.";
        buildType = "Simple";
      };
      components = {
        scuttlebutt-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.aeson
            hsPkgs.ed25519
            hsPkgs.cryptonite
            hsPkgs.text
            hsPkgs.memory
          ];
        };
        tests = {
          scuttlebutt-types-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.scuttlebutt-types
              hsPkgs.hspec
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.text
            ];
          };
        };
      };
    }