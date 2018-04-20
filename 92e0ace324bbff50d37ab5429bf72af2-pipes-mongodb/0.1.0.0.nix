{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-mongodb";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "bill@casarin.me";
        author = "William Casarin";
        homepage = "http://github.com/jb55/pipes-mongodb";
        url = "";
        synopsis = "Stream results from MongoDB";
        description = "Stream results from MongoDB";
        buildType = "Simple";
      };
      components = {
        pipes-mongodb = {
          depends  = [
            hsPkgs.base
            hsPkgs.mongoDB
            hsPkgs.monad-control
            hsPkgs.pipes
          ];
        };
        tests = {
          test-pipes-mongodb = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.mongoDB
              hsPkgs.monad-control
              hsPkgs.pipes
            ];
          };
        };
      };
    }