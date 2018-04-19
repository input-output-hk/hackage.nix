{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskeline-class";
          version = "0.6.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Antoine Latter <aslatter@gmail.com>";
        author = "Antoine Latter";
        homepage = "http://community.haskell.org/~aslatter/code/haskeline-class";
        url = "";
        synopsis = "Class interface for working with Haskeline";
        description = "Haskeline provides all of its functionality within the scope of a monad transformer.\nThis module adds two pieces to this:\n\n* Introduced here is a type-class which defines the operations\nsupported by the Haskeline monad transformer - MonadHaskeline\n\n* A newtype wrapper around Haskeline's InputT, called\nHaskelineT. Sadly, InputT defines ints own instance of the\nmtl MonadState, which is no good for folks wanting to use\nInputT in an existing monad transformer stack.\n\nHaskelineT also has an instance of MonadState, but it merely\nlifts the functions further in the transformer stack.\n\nLarge portions of the Haskeline functionality are re-exported\nhere for convinience.\n\nNote on build-dependencies: If you've succesfully built this with\nany packages other than the ones noted, please let me know.";
        buildType = "Simple";
      };
      components = {
        haskeline-class = {
          depends  = [
            hsPkgs.haskeline
            hsPkgs.haskeline
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }