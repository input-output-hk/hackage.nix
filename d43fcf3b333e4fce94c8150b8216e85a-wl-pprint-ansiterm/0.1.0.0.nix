{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wl-pprint-ansiterm";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Hiroki Hattori; Copyright (C) 2011 Edward A. Kmett";
        maintainer = "seagull.kamome@gmail.com";
        author = "Hiroki Hattori";
        homepage = "https://github.com/seagull-kamome/wl-pprint-ansiterm";
        url = "";
        synopsis = "ANSI Terminal support with wl-pprint-extras";
        description = "ANSI Terminal support with wl-pprint-extras";
        buildType = "Simple";
      };
      components = {
        wl-pprint-ansiterm = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.wl-pprint-extras
            hsPkgs.ansi-terminal
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.nats
            hsPkgs.semigroups
            hsPkgs.wl-pprint-extras
            hsPkgs.transformers
            hsPkgs.text
          ];
        };
      };
    }