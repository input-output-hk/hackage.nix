{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-blaze";
          version = "0.8";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2016 Servant Contributors";
        maintainer = "haskell-servant-maintainers@googlegroups.com";
        author = "Servant Contributors";
        homepage = "http://haskell-servant.readthedocs.org/";
        url = "";
        synopsis = "Blaze-html support for servant";
        description = "Servant support for blaze-html\n\n'HTML' content type which will use `ToMarkup` class.";
        buildType = "Simple";
      };
      components = {
        "servant-blaze" = {
          depends  = [
            hsPkgs.base
            hsPkgs.servant
            hsPkgs.http-media
            hsPkgs.blaze-html
          ];
        };
        tests = {
          "example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-html
              hsPkgs.servant-blaze
              hsPkgs.servant-server
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
      };
    }