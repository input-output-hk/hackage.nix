{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-all";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yom@artyom.me";
        author = "Artyom";
        homepage = "http://github.com/aelve/text-all";
        url = "";
        synopsis = "Everything Data.Text related in one package";
        description = "Everything @Data.Text@-related in one package.\n\nNote: this package does follow PVP.";
        buildType = "Simple";
      };
      components = {
        text-all = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.text-show
            hsPkgs.text-format
          ];
        };
      };
    }