{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-crud-persist";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "google.com";
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
            hsPkgs.persistent
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.wai
          ];
        };
      };
    }