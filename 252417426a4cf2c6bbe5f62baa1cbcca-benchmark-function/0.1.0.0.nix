{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "benchmark-function";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "hawk.alan@gmail.com";
        author = "Alan Hawkins";
        homepage = "xy30.com";
        url = "";
        synopsis = "Test the time it takes to run a haskell function";
        description = "";
        buildType = "Simple";
      };
      components = {
        benchmark-function = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.time
            hsPkgs.random
          ];
        };
      };
    }