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
      identifier = { name = "mysql-haskell-nem"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 José Lorenzo Rodríguez";
      maintainer = "jose.zap@gmail.com";
      author = "José Lorenzo Rodríguez\n, Bryan O'Sullivan\n, Paul Rouse";
      homepage = "https://github.com/lorenzo/mysql-haskell-nem#readme";
      url = "";
      synopsis = "Adds a interface like mysql-simple to mysql-haskell.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mysql-haskell" or (errorHandler.buildDepError "mysql-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          ];
        buildable = true;
        };
      };
    }