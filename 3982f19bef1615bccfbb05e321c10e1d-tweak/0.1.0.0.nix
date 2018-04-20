{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tweak";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "http://github.com/jfischoff/tweak";
        url = "";
        synopsis = "A library for incremental computing";
        description = "Create expressions that can updated incrementally.";
        buildType = "Simple";
      };
      components = {
        tweak = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.lens
            hsPkgs.transformers
            hsPkgs.containers
          ];
        };
      };
    }