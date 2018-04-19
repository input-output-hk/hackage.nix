{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "time-compat";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dag.odenhall@gmail.com";
        author = "Dag Odenhall";
        homepage = "http://hub.darcs.net/dag/time-compat";
        url = "";
        synopsis = "Compatibility with old-time for the time package";
        description = "Compatibility with the\n<old-time http://hackage.haskell.org/package/old-time>\npackage for the \\\"new\\\"\n<time http://hackage.haskell.org/package/time> package.";
        buildType = "Simple";
      };
      components = {
        time-compat = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.time
          ];
        };
      };
    }