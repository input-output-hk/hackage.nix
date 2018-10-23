{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ixmonad";
        version = "0.56";
      };
      license = "BSD-3-Clause";
      copyright = "2013-14 University of Cambridge";
      maintainer = "Dominic Orchard";
      author = "Dominic Orchard";
      homepage = "";
      url = "";
      synopsis = "Embeds effect systems into Haskell using parameteric effect monads";
      description = "Provides the 'parametric effect monad' structure to Haskell with a number of analogous of familiar monads (Reader, Writer, State, Maybe, Ticks) and a wrapper over normal monads (Control.Effect.Monad). This provides a way to embed effect systems into Haskell. For more information see <http://dorchard.co.uk/ixmonad> and the examples in <https://github.com/dorchard/effect-monad/tree/master/examples>.";
      buildType = "Simple";
    };
    components = {
      "ixmonad" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }