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
      specVersion = "1.6";
      identifier = {
        name = "ixmonad";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2013-14 University of Cambridge";
      maintainer = "Dominic Orchard";
      author = "Dominic Orchard";
      homepage = "";
      url = "";
      synopsis = "Indexed monads library";
      description = "Provides the 'indexed monad' structure to Haskell with a number of indexed analogous of familiar monads (Reader, Writer, Maybe) and a wrapper over normal monads (Control.IxMonad.Monad). For more information see <http://dorchard.co.uk/ixmonad>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.HList)
        ];
      };
    };
  }