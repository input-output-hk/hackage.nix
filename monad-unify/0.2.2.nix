{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "monad-unify";
          version = "0.2.2";
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
        monad-unify = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.unordered-containers
          ];
        };
      };
    }