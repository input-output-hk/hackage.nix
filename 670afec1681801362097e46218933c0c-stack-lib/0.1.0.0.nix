{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stack-lib";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Clinton Mead";
        maintainer = "clintonmead@gmail.com";
        author = "Clinton Mead";
        homepage = "https://github.com/clintonmead/stack-lib#readme";
        url = "";
        synopsis = "Wrapper to use stack as a library";
        description = "Some wrapper functions around [stack](https://hackage.haskell.org/package/stack) intended to make it easier to use [stack](https://hackage.haskell.org/package/stack) as a library.";
        buildType = "Simple";
      };
      components = {
        "stack-lib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.monad-logger
            hsPkgs.path
            hsPkgs.stack
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
      };
    }