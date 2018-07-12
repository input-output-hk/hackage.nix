{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "chalmers-lava2000";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008. Koen Claessen <koen@chalmers.se>";
        maintainer = "Emil Axelsson <emax@chalmers.se>";
        author = "Koen Claessen <koen@chalmers.se>";
        homepage = "http://www.cs.chalmers.se/~koen/Lava/";
        url = "";
        synopsis = "Hardware description library";
        description = "Hardware description library";
        buildType = "Simple";
      };
      components = {
        "chalmers-lava2000" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.process
          ];
        };
      };
    }