{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "waitfree";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "yhirai@pira.jp";
        author = "Yoichi Hirai";
        homepage = "";
        url = "";
        synopsis = "A wrapping library for waitfree computation.";
        description = "A combinator library for asynchronous waitfree computation among forkIO threads.";
        buildType = "Simple";
      };
      components = {
        waitfree = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }