{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cqrs-memory";
          version = "0.10.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Bardur Arantsson <bardur@scientician.net>";
        author = "Bardur Arantsson";
        homepage = "";
        url = "";
        synopsis = "Memory backend for the cqrs package.";
        description = "Memory backend for the cqrs package.";
        buildType = "Simple";
      };
      components = {
        cqrs-memory = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cqrs-core
            hsPkgs.io-streams
            hsPkgs.stm
            hsPkgs.uuid-types
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.cqrs-memory
              hsPkgs.cqrs-core
              hsPkgs.cqrs-testkit
              hsPkgs.hspec
              hsPkgs.random
            ];
          };
        };
      };
    }