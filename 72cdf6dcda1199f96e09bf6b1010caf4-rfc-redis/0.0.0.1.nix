{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      production = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rfc-redis";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "smokejumperit+rfc@gmail.com";
        author = "Robert Fischer";
        homepage = "https://github.com/RobertFischer/rfc#readme";
        url = "";
        synopsis = "The Redis extensions from the Robert Fischer Commons.";
        description = "Various capabilities supporting @Redis@/@Hedis@ development, including some simplification of the interface.";
        buildType = "Simple";
      };
      components = {
        rfc-redis = {
          depends  = [
            hsPkgs.base
            hsPkgs.hedis
            hsPkgs.rfc-env
            hsPkgs.rfc-prelude
            hsPkgs.time
          ];
        };
      };
    }