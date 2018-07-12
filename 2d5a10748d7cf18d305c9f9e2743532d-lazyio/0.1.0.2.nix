{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "lazyio";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Lazy_IO";
        url = "";
        synopsis = "Run IO actions lazily while respecting their order";
        description = "Run IO actions lazily while respecting their order.\nRunning a value of the LazyIO monad in the IO monad is like starting a thread\nwhich is however driven by its output.\nThat is, the LazyIO action is only executed as far as necessary\nin order to provide the required data.";
        buildType = "Simple";
      };
      components = {
        "lazyio" = {
          depends  = [
            hsPkgs.unsafe
            hsPkgs.transformers
          ] ++ (if _flags.splitbase
            then [ hsPkgs.base ]
            else [
              hsPkgs.special-functors
              hsPkgs.base
            ]);
        };
        exes = { "test" = {}; };
      };
    }