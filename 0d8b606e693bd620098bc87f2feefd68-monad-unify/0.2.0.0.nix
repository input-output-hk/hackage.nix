{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "monad-unify";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "(c) Phil Freeman 2013";
        maintainer = "Phil Freeman <paf31@cantab.net>";
        author = "Phil Freeman";
        homepage = "";
        url = "";
        synopsis = "Generic first-order unification";
        description = "";
        buildType = "Simple";
      };
      components = {
        "monad-unify" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.syb
            hsPkgs.unordered-containers
          ];
        };
      };
    }