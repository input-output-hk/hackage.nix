{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tagged-timers";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jhala@cs.ucsd.edu";
        author = "Ranjit Jhala";
        homepage = "http://github.com/ucsd-progsys/tagged-timers";
        url = "";
        synopsis = "Simple wrappers for timing IO actions (single-threaded)";
        description = "Library for tagging IO actions and getting logs of total\ntime spent per tag.";
        buildType = "Simple";
      };
      components = {
        tagged-timers = {
          depends  = [
            hsPkgs.base
            hsPkgs.unordered-containers
            hsPkgs.transformers
            hsPkgs.time
          ];
        };
      };
    }