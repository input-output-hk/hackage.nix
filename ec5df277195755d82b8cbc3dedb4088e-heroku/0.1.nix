{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "heroku";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "greg@gregweber.info";
        author = "Greg Weber";
        homepage = "https://github.com/gregwebs/haskell-heroku";
        url = "";
        synopsis = "helpers for deploying to Heroku";
        description = "currently just a parser for DATABASE_URL";
        buildType = "Simple";
      };
      components = {
        "heroku" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.network
          ];
        };
      };
    }