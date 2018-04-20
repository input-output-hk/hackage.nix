{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-crud-persist";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/yesod-crud-persist";
        url = "";
        synopsis = "Flexible CRUD subsite usable with Yesod and Persistent.";
        description = "Flexible CRUD subsite usable with Yesod and Persistent.";
        buildType = "Simple";
      };
      components = {
        yesod-crud-persist = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-core
            hsPkgs.yesod-form
            hsPkgs.yesod-persistent
            hsPkgs.yesod-markdown
            hsPkgs.persistent
            hsPkgs.microlens
            hsPkgs.microlens-th
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.esqueleto
            hsPkgs.either
            hsPkgs.time
          ];
        };
      };
    }