{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "satchmo-toysat";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Masahiro Sakai";
        maintainer = "masahiro.sakai@gmail.com";
        author = "Masahiro Sakai";
        homepage = "https://github.com/msakai/satchmo-toysat";
        url = "";
        synopsis = "toysat driver as backend for satchmo";
        description = "toysat driver as backend for satchmo";
        buildType = "Simple";
      };
      components = {
        satchmo-toysat = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.satchmo
            hsPkgs.toysolver
          ];
        };
      };
    }