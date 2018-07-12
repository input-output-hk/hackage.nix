{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "odpic-raw";
          version = "0.3.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Daniel YU <leptonyu@gmail.com>";
        author = "";
        homepage = "https://github.com/leptonyu/odpic-raw#readme";
        url = "";
        synopsis = "Oracle Database Bindings";
        description = "A low-level client library for the Oracle database, implemented as bindings to the C ODPI API.";
        buildType = "Simple";
      };
      components = {
        "odpic-raw" = {
          depends  = [
            hsPkgs.Decimal
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.time
          ];
          libs = [ pkgs.odpic ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
        tests = {
          "odpic-raw-test" = {
            depends  = [
              hsPkgs.Decimal
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.hspec
              hsPkgs.odpic-raw
              hsPkgs.resourcet
              hsPkgs.time
            ];
          };
        };
      };
    }