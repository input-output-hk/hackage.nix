{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hoq";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "valery.isaev@gmail.com";
        author = "isaev";
        homepage = "http://github.com/valis/hoq";
        url = "";
        synopsis = "A language based on homotopy type theory with an interval object";
        description = "";
        buildType = "Custom";
      };
      components = {
        exes = {
          hoq = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.BNFC
              hsPkgs.array
              hsPkgs.pretty
              hsPkgs.prelude-extras
              hsPkgs.readline
            ];
            build-tools = [
              hsPkgs.buildPackages.happy
              hsPkgs.buildPackages.alex
            ];
          };
        };
      };
    }