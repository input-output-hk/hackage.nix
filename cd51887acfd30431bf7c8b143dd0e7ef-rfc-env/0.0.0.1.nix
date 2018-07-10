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
          name = "rfc-env";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "smokejumperit+rfc@gmail.com";
        author = "Robert Fischer";
        homepage = "https://github.com/RobertFischer/rfc#readme";
        url = "";
        synopsis = "Environment variable support from the Robert Fischer Commons.";
        description = "Provides an opinionated and simple way to interface with environment variables,  current based on @envy@.\nThis is part of the Robert Fischer commons, which are the @rfc-@ family of packages.";
        buildType = "Simple";
      };
      components = {
        rfc-env = {
          depends  = [
            hsPkgs.base
            hsPkgs.envy
            hsPkgs.network
            hsPkgs.rfc-prelude
            hsPkgs.time
          ];
        };
      };
    }