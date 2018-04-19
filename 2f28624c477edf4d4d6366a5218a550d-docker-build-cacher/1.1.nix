{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "docker-build-cacher";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Seatgeek";
        maintainer = "lorenzo@seatgeek.com";
        author = "Jose Lorenzo Rodriguez";
        homepage = "";
        url = "";
        synopsis = "Builds a services with docker and caches all of its intermediate stages";
        description = "A CLI tool to speed up multi-stage docker file builds by caching intermediate\nstages separately, so the can be used in successive builds.";
        buildType = "Simple";
      };
      components = {
        exes = {
          docker-build-cacher = {
            depends  = [
              hsPkgs.base
              hsPkgs.turtle
              hsPkgs.language-dockerfile
              hsPkgs.containers
              hsPkgs.foldl
              hsPkgs.text
              hsPkgs.system-filepath
            ];
          };
        };
      };
    }