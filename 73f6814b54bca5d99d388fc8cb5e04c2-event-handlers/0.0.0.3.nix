{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "event-handlers";
          version = "0.0.0.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <james.cook@usma.edu>";
        author = "James Cook <james.cook@usma.edu>";
        homepage = "http://code.haskell.org/~mokus/event-handlers";
        url = "";
        synopsis = "Event handlers";
        description = "Simple event handler set management.";
        buildType = "Simple";
      };
      components = {
        "event-handlers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }