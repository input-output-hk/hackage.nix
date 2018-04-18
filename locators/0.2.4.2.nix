{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "locators";
          version = "0.2.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "© 2013-2014 Operational Dynamics Consulting, Pty Ltd and Others";
        maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
        author = "Andrew Cowie <andrew@operationaldynamics.com>";
        homepage = "";
        url = "";
        synopsis = "Human exchangable identifiers and locators";
        description = "";
        buildType = "Simple";
      };
      components = {
        locators = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cryptohash
            hsPkgs.cereal
          ];
        };
        tests = {
          check = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.cereal
            ];
          };
        };
      };
    }