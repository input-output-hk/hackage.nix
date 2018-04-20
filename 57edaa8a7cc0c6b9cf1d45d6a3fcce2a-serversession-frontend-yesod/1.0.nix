{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "serversession-frontend-yesod";
          version = "1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
        author = "Felipe Lessa <felipe.lessa@gmail.com>";
        homepage = "https://github.com/yesodweb/serversession";
        url = "";
        synopsis = "Yesod bindings for serversession.";
        description = "API docs and the README are available at <http://www.stackage.org/package/serversession-frontend-yesod>";
        buildType = "Simple";
      };
      components = {
        serversession-frontend-yesod = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cookie
            hsPkgs.data-default
            hsPkgs.path-pieces
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.wai
            hsPkgs.yesod-core
            hsPkgs.serversession
          ];
        };
      };
    }