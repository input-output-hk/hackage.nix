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
        name = "effect-monad";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "2013-14 University of Cambridge";
      maintainer = "Dominic Orchard";
      author = "Dominic Orchard";
      homepage = "";
      url = "";
      synopsis = "Embeds effect systems into Haskell using parameteric effect monads";
      description = "Provides the 'parametric effect monad' structure to Haskell with a number of analogous of familiar monads (Reader, Writer, State, Maybe, Counter, Update) and a wrapper over normal monads (Control.Effect.Monad). This provides a way to embed effect systems into Haskell. For more information see with paper \\\"Embedding effect systems in Haskell\\\" by Orchard and Petricek <http://www.cl.cam.ac.uk/~dao29/publ/haskell14-effects.pdf> (Haskell, 2014) and the examples in <https://github.com/dorchard/effect-monad/tree/master/examples>.\n\n(note, this package was previously called 'ixmonad' until September 2014).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.type-level-sets)
        ];
      };
    };
  }