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
      specVersion = "1.12";
      identifier = { name = "generically"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2022 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus";
      homepage = "";
      url = "";
      synopsis = "Generically newtype to use with DerivingVia";
      description = "This is a compatibility package as @Generically@ and @Generically1@ newtypes\nare available since @base-4.17@ in 'GHC.Generics'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }