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
      identifier = { name = "foma"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "joomy@cattheory.com";
      author = "Joomy Korkut";
      homepage = "http://github.com/joom/foma.hs";
      url = "";
      synopsis = "Simple Haskell bindings for Foma.";
      description = "Foma is a free and open source finite-state toolkit.\nThis package contains some simple Haskell bindings to\nto <http://code.google.com/p/foma/ Foma>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."foma" or (errorHandler.sysDepError "foma")) ];
        buildable = true;
        };
      };
    }