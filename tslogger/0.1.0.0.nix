{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tslogger";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "peter.p.fogg@gmail.com";
        author = "Ryan Newton, Peter Fogg";
        homepage = "";
        url = "";
        synopsis = "Thread-safe logging.";
        description = "";
        buildType = "Simple";
      };
      components = {
        tslogger = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.containers
            hsPkgs.random
          ];
        };
      };
    }