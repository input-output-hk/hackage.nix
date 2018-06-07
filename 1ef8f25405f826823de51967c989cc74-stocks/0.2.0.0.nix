{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stocks";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 David Bouchare, Kristian Sällberg";
        maintainer = "David Bouchare, Kristian Sällberg";
        author = "David Bouchare, Kristian Sällberg";
        homepage = "https://github.com/dabcoder/stocks";
        url = "";
        synopsis = "Library for the IEX Trading API";
        description = "Simple library for interacting with the IEX Trading API";
        buildType = "Simple";
      };
      components = {
        stocks = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.semigroups
          ];
        };
        tests = {
          test-hspec = {
            depends  = [
              hsPkgs.base
              hsPkgs.stocks
              hsPkgs.bytestring
              hsPkgs.HUnit
            ];
          };
        };
      };
    }