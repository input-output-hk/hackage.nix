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
      identifier = { name = "carbonara"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Chris Sze";
      maintainer = "Chris Sze <cris@graduate.hku.hk>";
      author = "Chris Sze";
      homepage = "https://github.com/szehk/Haskell-Carbonara-Library";
      url = "";
      synopsis = "some spaghetti code ";
      description = "@carbonara@ is a set of handy tools for tuples, database";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mysql-simple" or (errorHandler.buildDepError "mysql-simple"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }