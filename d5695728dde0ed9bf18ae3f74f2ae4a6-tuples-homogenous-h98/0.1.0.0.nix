{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tuples-homogenous-h98";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Petr Pudlák";
        author = "Petr Pudlák";
        homepage = "https://github.com/ppetr/tuples-homogenous-h98";
        url = "";
        synopsis = "Wrappers for n-ary tuples with Traversable and Applicative instances.";
        description = "Provides @newtype@ wrappers for n-ary homogenous tuples of types @(a,...,a)@ and instances for @Functor@, @Applicative@ (zipping), @Foldable@ and @Traversable@. The package aims to be Haskell98 compliant.";
        buildType = "Simple";
      };
      components = {
        tuples-homogenous-h98 = {
          depends  = [ hsPkgs.base ];
        };
      };
    }