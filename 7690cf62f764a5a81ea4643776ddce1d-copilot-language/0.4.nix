{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "copilot-language";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "niswegmann@gmail.com";
        author = "Lee Pike, Robin Morisset, Alwyn Goodloe, Sebastian Niller,\nNis Nordby Wegmann";
        homepage = "";
        url = "";
        synopsis = "A Haskell-embedded DSL for monitoring hard real-time\ndistributed systems.";
        description = "Blah blah blah...";
        buildType = "Simple";
      };
      components = {
        copilot-language = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-reify
            hsPkgs.mtl
            hsPkgs.ghc-prim
            hsPkgs.copilot-core
          ];
        };
      };
    }