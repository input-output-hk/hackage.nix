{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-tableview";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <es@ertes.de>";
        author = "Ertugrul Söylemez <es@ertes.de>";
        homepage = "";
        url = "";
        synopsis = "Table view for Yesod applications";
        description = "Table view for Yesod applications.";
        buildType = "Simple";
      };
      components = {
        "yesod-tableview" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hamlet
            hsPkgs.persistent
            hsPkgs.yesod
          ];
        };
      };
    }