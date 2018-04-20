{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "split-tchan";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "leon@melding-monads.com";
        author = "Leon P Smith";
        homepage = "";
        url = "";
        synopsis = "STM's TChan split into sending and receiving halves.";
        description = "STM's TChan split into sending and receiving halves.";
        buildType = "Simple";
      };
      components = {
        split-tchan = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
      };
    }