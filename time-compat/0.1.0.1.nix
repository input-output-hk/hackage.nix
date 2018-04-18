{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "time-compat";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dag.odenhall@gmail.com";
        author = "Dag Odenhall";
        homepage = "http://hub.darcs.net/dag/time-compat";
        url = "";
        synopsis = "Compatibility with old-time for the time package";
        description = "Compatibility with the <old-time> package for the \\\"new\\\"\n<time> package.";
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