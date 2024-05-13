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
    flags = { tagged = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "assoc"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "swap and assoc: Symmetric and Semigroupy Bifunctors";
      description = "Provides generalisations of\n@swap :: (a,b) -> (b,a)@ and\n@assoc :: ((a,b),c) -> (a,(b,c))@\nto\n@Bifunctor@s supporting similar operations (e.g. @Either@, @These@).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (flags.tagged) (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
        buildable = true;
      };
    };
  }