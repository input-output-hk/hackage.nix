{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "superbubbles";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Simon Marechal";
        maintainer = "bartavelle@gmail.com";
        author = "Simon Marechal";
        homepage = "https://github.com/bartavelle/superbubbles#readme";
        url = "";
        synopsis = "Find \"superbubbles\", as described in https://arxiv.org/abs/1307.7925";
        description = "";
        buildType = "Simple";
      };
      components = {
        "superbubbles" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
        tests = {
          "superbubbles-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.superbubbles
              hsPkgs.hspec
              hsPkgs.containers
            ];
          };
        };
      };
    }