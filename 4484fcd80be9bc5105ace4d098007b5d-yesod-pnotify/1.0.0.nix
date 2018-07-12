{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-pnotify";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cutsea110@gmail.com";
        author = "Katsutoshi Itoh";
        homepage = "https://github.com/cutsea110/yesod-pnotify";
        url = "";
        synopsis = "Yet another getMessage/setMessage using pnotify jquery plugins";
        description = "Yet another getMessage/setMessage using pnotify jquery plugins";
        buildType = "Simple";
      };
      components = {
        "yesod-pnotify" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod
            hsPkgs.yesod-form
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.shakespeare
          ];
        };
        exes = {
          "sample" = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod
              hsPkgs.yesod-form
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.shakespeare
            ];
          };
        };
      };
    }