{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "inc-ref";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "https://github.com/jfischoff/inc-ref";
        url = "";
        synopsis = "A STM reference useful for incremental computing";
        description = "";
        buildType = "Simple";
      };
      components = {
        inc-ref = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
      };
    }