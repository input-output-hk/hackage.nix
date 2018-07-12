{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microlens-mtl";
          version = "0.1.9.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Artyom <yom@artyom.me>";
        author = "Edward Kmett, Artyom";
        homepage = "http://github.com/aelve/microlens";
        url = "";
        synopsis = "microlens support for Reader/Writer/State from mtl";
        description = "This package contains functions (like 'view' or '+=') which work on 'MonadReader', 'MonadWriter', and 'MonadState' from the mtl package.\n\nThis package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.";
        buildType = "Simple";
      };
      components = {
        "microlens-mtl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.microlens
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ];
        };
      };
    }