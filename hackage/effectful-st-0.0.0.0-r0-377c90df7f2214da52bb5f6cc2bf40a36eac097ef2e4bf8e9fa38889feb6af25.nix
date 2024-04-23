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
      specVersion = "2.4";
      identifier = { name = "effectful-st"; version = "0.0.0.0"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "qrpnxz@hyperlife.xyz";
      author = "Russell Hernandez Ruiz";
      homepage = "https://sr.ht/~qrpnxz/effectful-st/";
      url = "";
      synopsis = "`ST`-style mutation for `effectful`.";
      description = "An `ST`-style alternative to the `Prim` effect in `effectful` that\nallows safely running scoped state transformations without `IOE`.\n\nThe `Prim` effect allows the use of `PrimMonad` on `Eff` without\nallowing arbitrary `IO`. However, there is no safe way to run the\neffect without introducing the `IOE` effect because `Prim` has no\nway of delimiting the scope of the mutation to `runPrim`. In other\nwords, `Prim` is effectively acting merely as a restricted form of\n`IOE` that only allows `PrimMonad`.\n\n`STE` from this package on the other hand borrows the quantification\ntrick from `Control.Monad.ST` to provide a safe way to run the effect\npurely.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
    };
  }