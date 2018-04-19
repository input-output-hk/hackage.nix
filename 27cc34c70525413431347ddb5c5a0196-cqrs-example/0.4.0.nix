{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0.1";
        identifier = {
          name = "cqrs-example";
          version = "0.4.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "spam@scientician.net";
        author = "Bardur Arantsson";
        homepage = "";
        url = "";
        synopsis = "Example for cqrs package";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          cqrs-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.cereal
              hsPkgs.cqrs
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }