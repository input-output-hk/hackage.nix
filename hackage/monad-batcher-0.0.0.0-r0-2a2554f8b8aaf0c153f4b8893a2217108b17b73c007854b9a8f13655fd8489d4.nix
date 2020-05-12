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
      identifier = { name = "monad-batcher"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "https://github.com/basvandijk/monad-batcher";
      url = "";
      synopsis = "An applicative monad that batches commands for later more efficient execution";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      };
    }