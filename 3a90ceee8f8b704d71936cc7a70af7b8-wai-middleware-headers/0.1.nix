{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-middleware-headers";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "seanhess@gmail.com";
        author = "Sean Hess";
        homepage = "http://github.com/seanhess/wai-middleware-headers";
        url = "";
        synopsis = "cors and addHeaders for WAI";
        description = "cors and addHeaders for WAI";
        buildType = "Simple";
      };
      components = {
        wai-middleware-headers = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.bytestring
            hsPkgs.http-types
          ];
        };
      };
    }