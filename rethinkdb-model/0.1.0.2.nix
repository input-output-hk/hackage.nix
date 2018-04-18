{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rethinkdb-model";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Sean Hess <seanhess@gmail.com>";
        author = "Sean Hess";
        homepage = "http://github.com/seanhess/rethinkdb-model";
        url = "";
        synopsis = "Useful tools for modeling data with rethinkdb";
        description = "Useful tools for modeling data with rethinkdb";
        buildType = "Simple";
      };
      components = {
        rethinkdb-model = {
          depends  = [
            hsPkgs.base
            hsPkgs.rethinkdb
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.aeson
          ];
        };
      };
    }