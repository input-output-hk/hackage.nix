{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "special-functors";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@henning-thielemann.de";
        author = "libraries@haskell.org";
        homepage = "";
        url = "";
        synopsis = "Control.Applicative, Data.Foldable, Data.Traversable (compatibility package)";
        description = "This package contains Control.Applicative, Data.Foldable, Data.Traversable\nfrom 6.8's base for use in earlier GHC versions";
        buildType = "Simple";
      };
      components = {
        special-functors = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }