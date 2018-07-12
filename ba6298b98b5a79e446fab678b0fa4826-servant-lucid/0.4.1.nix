{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-lucid";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "http://haskell-servant.github.io/";
        url = "";
        synopsis = "Servant support for lucid";
        description = "";
        buildType = "Simple";
      };
      components = {
        "servant-lucid" = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-media
            hsPkgs.lucid
            hsPkgs.servant
          ];
        };
      };
    }