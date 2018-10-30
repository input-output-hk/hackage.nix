{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "tuples-homogenous-h98";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Petr Pudlák";
      author = "Petr Pudlák";
      homepage = "https://github.com/ppetr/tuples-homogenous-h98";
      url = "";
      synopsis = "Wrappers for n-ary tuples with Traversable and Applicative/Monad instances.";
      description = "Provides @newtype@ wrappers for n-ary homogenous tuples of types @(a,...,a)@ and instances for @Functor@, @Applicative@ (zipping), @Monad@, @Foldable@ and @Traversable@. The package aims to be Haskell98 compliant.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }