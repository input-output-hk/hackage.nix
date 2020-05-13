{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Only"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "The 1-tuple type or single-value \"collection\"";
      description = "This package provides a canonical anonymous 1-tuple type missing\nfrom Haskell for attaching typeclass instances.\n\nNOTE: There is also the </package/OneTuple OneTuple package> which\nby using a boxed @data@-type provides a 1-tuple type which has\nlaziness properties which are more faithful to the ones of Haskell's\nnative tuples; whereas the primary purpose of 'Only' is to\nprovide the traditionally so named type-wrapper for attaching typeclass\ninstances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      };
    }