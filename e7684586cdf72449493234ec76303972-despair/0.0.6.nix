{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "despair";
          version = "0.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Heather Cynede <Heather@live.ru>";
        author = "Heather Cynede";
        homepage = "";
        url = "";
        synopsis = "Despair";
        description = "Despair";
        buildType = "Simple";
      };
      components = {
        "despair" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
          ];
        };
      };
    }