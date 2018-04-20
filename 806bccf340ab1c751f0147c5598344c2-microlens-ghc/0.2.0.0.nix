{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microlens-ghc";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Artyom <yom@artyom.me>";
        author = "Artyom";
        homepage = "http://github.com/aelve/microlens";
        url = "";
        synopsis = "Orphan instances of microlens classes for packages coming with GHC (array, bytestring, containers)";
        description = "Orphan instances of <http://hackage.haskell.org/package/microlens microlens> classes for packages coming with GHC (<http://hackage.haskell.org/package/array array>, <http://hackage.haskell.org/package/bytestring bytestring>, <http://hackage.haskell.org/package/containers containers>).\n\nThis package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.";
        buildType = "Simple";
      };
      components = {
        microlens-ghc = {
          depends  = [
            hsPkgs.base
            hsPkgs.microlens
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
          ];
        };
      };
    }