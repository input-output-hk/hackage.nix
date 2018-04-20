{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cqrs-testkit";
          version = "0.10.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Bardur Arantsson <bardur@scientician.net>";
        author = "Bardur Arantsson";
        homepage = "";
        url = "";
        synopsis = "Command-Query Responsibility Segregation Test Support";
        description = "Test Support for CQRS integration components.";
        buildType = "Simple";
      };
      components = {
        cqrs-testkit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cqrs-core
            hsPkgs.deepseq
            hsPkgs.io-streams
            hsPkgs.lifted-base
            hsPkgs.random
            hsPkgs.transformers
            hsPkgs.uuid-types
            hsPkgs.hspec
            hsPkgs.HUnit
          ];
        };
      };
    }