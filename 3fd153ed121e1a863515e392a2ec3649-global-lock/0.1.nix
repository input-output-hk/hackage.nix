{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "global-lock";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
        author = "Keegan McAllister <mcallister.keegan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A global lock implemented without unsafePerformIO";
        description = "This library provides a single global lock.  You can use it, for example,\nto protect a thread-unsafe C library.\n\nThe implementation does not use @unsafePerformIO@.  It should be safe\nagainst GHC bugs such as <http://hackage.haskell.org/trac/ghc/ticket/5558>.\n\nYou can use this library as-is, or as a template for including a similar\nlock in your own Haskell project.\n\nThis library requires that the C compiler invoked by Cabal is GCC 4.1 or\nnewer.";
        buildType = "Simple";
      };
      components = {
        global-lock = {
          depends  = [ hsPkgs.base ];
        };
      };
    }