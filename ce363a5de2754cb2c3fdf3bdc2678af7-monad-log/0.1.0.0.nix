{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-log";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "winterland1989@gmail.com";
        author = "winterland1989";
        homepage = "";
        url = "";
        synopsis = "A simple and fast logging monad";
        description = "A simple and fast logging monad";
        buildType = "Simple";
      };
      components = {
        "monad-log" = {
          depends  = [
            hsPkgs.base
            hsPkgs.fast-logger
            hsPkgs.monad-control
            hsPkgs.lifted-base
            hsPkgs.exceptions
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.text-show
            hsPkgs.transformers
            hsPkgs.aeson
            hsPkgs.template-haskell
          ];
        };
      };
    }