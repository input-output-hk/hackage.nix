{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-lucid";
          version = "0.8";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2016 Servant Contributors";
        maintainer = "haskell-servant-maintainers@googlegroups.com";
        author = "Servant Contributors";
        homepage = "http://haskell-servant.readthedocs.org/";
        url = "";
        synopsis = "Servant support for lucid";
        description = "Servant support for lucid.\n\n'HTML' content type which will use `ToHtml` class.";
        buildType = "Simple";
      };
      components = {
        servant-lucid = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-media
            hsPkgs.lucid
            hsPkgs.servant
          ];
        };
        tests = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.lucid
              hsPkgs.servant-lucid
              hsPkgs.servant-server
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
      };
    }