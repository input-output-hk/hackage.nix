{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "monad-mersenne-random"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/monad-mersenne-random";
      url = "";
      synopsis = "An efficient random generator monad, based on the Mersenne Twister";
      description = "Often we need an efficient way to generate high\nquality pseudo-random numbers in Haskell. We have good generators\nthemselves (for example, the mersenne-random-pure64 package), however, users\nare often tempted to store the generator in a lazy state monad. This\ncauses performance problems.\n\nThis package provides an optimized 'Rand' monad for monadic generation\nof random numbers from a state, with close attention to performance. You\nmay have results an order of magnitude or more better than using\nControl.Monad.State to store your generator.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.mersenne-random-pure64) ];
        };
      };
    }