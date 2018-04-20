{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tiny-scheduler";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "None";
        maintainer = "functor.soup@gmail.com";
        author = "Functor soup";
        homepage = "https://github.com/functor-soup/tiny-scheduler#readme";
        url = "";
        synopsis = "tiny no-brainer job scheduler";
        description = "this is a tiny library to make scheduling jobs to run predermined intervals easier";
        buildType = "Simple";
      };
      components = {
        tiny-scheduler = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.time
          ];
        };
      };
    }