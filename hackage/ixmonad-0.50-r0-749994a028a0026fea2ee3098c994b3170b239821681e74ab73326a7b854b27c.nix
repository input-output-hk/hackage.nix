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
        version = "0.50";
      };
      license = "BSD-3-Clause";
      copyright = "2013-14 University of Cambridge";
      maintainer = "Dominic Orchard";
      author = "Dominic Orchard";
      homepage = "";
      url = "";
      synopsis = "Embeds effect systems into Haskell using an parameteric effect monad (the |Effect| type class)";
      description = "Provides the 'parametric effect monad' structure to Haskell with a number of analogous of familiar monads (Reader, Writer, State, Maybe, Ticks) and a wrapper over normal monads (Control.Effect.Monad). This provides a way to embed effect systems into Haskell. For more information see <http://dorchard.co.uk/ixmonad>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }