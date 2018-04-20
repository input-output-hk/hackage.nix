{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-locale = false;
      lib-werror = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "serversession-backend-redis";
          version = "1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
        author = "Felipe Lessa <felipe.lessa@gmail.com>";
        homepage = "https://github.com/yesodweb/serversession";
        url = "";
        synopsis = "Storage backend for serversession using Redis.";
        description = "API docs and the README are available at <http://www.stackage.org/package/serversession-backend-redis>";
        buildType = "Simple";
      };
      components = {
        serversession-backend-redis = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hedis
            hsPkgs.path-pieces
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.serversession
          ] ++ (if _flags.old-locale
            then [
              hsPkgs.time
              hsPkgs.old-locale
            ]
            else [ hsPkgs.time ]);
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hedis
              hsPkgs.path-pieces
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.hspec
              hsPkgs.serversession
              hsPkgs.serversession-backend-redis
            ];
          };
        };
      };
    }