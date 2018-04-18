{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "event-monad";
          version = "0.0.0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <james.cook@usma.edu>";
        author = "James Cook <james.cook@usma.edu>";
        homepage = "http://code.haskell.org/~mokus/event-monad";
        url = "";
        synopsis = "Event-graph simulation monad transformer";
        description = "An interface for and simple implementation of an\nevent-graph simulation system as a monad transformer.";
        buildType = "Simple";
      };
      components = {
        event-monad = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.event-handlers
            hsPkgs.haskell98
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.priority-queue
            hsPkgs.stateref
            hsPkgs.wl-pprint
          ];
        };
      };
    }