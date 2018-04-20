{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hskeleton";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "see LICENSE";
        maintainer = "Robin Green <greenrd@greenrd.org>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Skeleton for new Haskell programs";
        description = "Currently, this just handles --help and --version arguments for you.\nIn future, it may do more.";
        buildType = "Simple";
      };
      components = {
        hskeleton = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
          ];
        };
      };
    }