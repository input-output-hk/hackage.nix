{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cqrs-example";
          version = "0.9.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "spam@scientician.net";
        author = "Bardur Arantsson";
        homepage = "";
        url = "";
        synopsis = "Example for cqrs package";
        description = "Example for cqrs package";
        buildType = "Simple";
      };
      components = {
        exes = {
          cqrs-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.cqrs
              hsPkgs.deepseq
              hsPkgs.derive
              hsPkgs.scotty
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.wai-middleware-static
              hsPkgs.wai-eventsource
            ];
          };
        };
      };
    }