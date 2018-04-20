{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yarr-image-io";
          version = "0.9.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Roman Leventov <leventov@ya.ru>";
        author = "Don Stewart, Raphael Javaux, Roman Leventov";
        homepage = "";
        url = "";
        synopsis = "Image IO for Yarr library";
        description = "@repa-devil@ package, adapted to @yarr@ library.";
        buildType = "Simple";
      };
      components = {
        yarr-image-io = {
          depends  = [
            hsPkgs.base
            hsPkgs.yarr
          ];
          libs = [ pkgs.IL ];
        };
      };
    }