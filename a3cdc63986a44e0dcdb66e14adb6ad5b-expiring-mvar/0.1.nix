{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "expiring-mvar";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "shawjef3@msu.edu";
        author = "Jeff Shaw";
        homepage = "";
        url = "";
        synopsis = "Create values which expire after a period of time.";
        description = "expiring-mvar provides the type ExpiringMVar. ExpiringMVar is a container for a single value. When creating an ExpiringMVar, a thread is spawned which deletes the value held in the ExpiringMVar after a given period of time. The timer can be reset, cancelled, or restarted with a new time amount.";
        buildType = "Simple";
      };
      components = {
        expiring-mvar = {
          depends  = [ hsPkgs.base ];
        };
      };
    }