{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-websockets-extra";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tolysz@gmail.com";
        author = "Marcin Tolysz";
        homepage = "";
        url = "";
        synopsis = "Extension to yesod-websockets";
        description = "Adding exceptions to ws handling";
        buildType = "Simple";
      };
      components = {
        "yesod-websockets-extra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod-websockets
            hsPkgs.websockets
            hsPkgs.transformers
            hsPkgs.enclosed-exceptions
          ];
        };
      };
    }