{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "priority-queue";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "http://code.haskell.org/~mokus/priority-queue";
        url = "";
        synopsis = "Simple implementation of a priority queue.";
        description = "Simple implementation of a priority queue.";
        buildType = "Simple";
      };
      components = {
        priority-queue = {
          depends  = [
            hsPkgs.reord
            hsPkgs.stateref
            hsPkgs.queue
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.containers
            ]
            else [ hsPkgs.base ]);
        };
      };
    }