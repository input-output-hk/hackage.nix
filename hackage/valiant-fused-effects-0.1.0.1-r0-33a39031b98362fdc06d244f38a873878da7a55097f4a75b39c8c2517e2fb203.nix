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
    flags = { werror = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "valiant-fused-effects"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joshburgess.webdev@gmail.com";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/valiant";
      url = "";
      synopsis = "Fused-effects adapter for valiant";
      description = "Provides an @Valiant@ effect and @ValiantPoolC@ carrier for the\n@fused-effects@ effect system, enabling compile-time checked SQL\nqueries as an algebraic effect.\n\n@\nimport Valiant.FusedEffects\n\nmyApp :: Has Valiant sig m => m [User]\nmyApp = do\n  users <- fetchAllF listUsers ()\n  pure users\n\nmain :: IO ()\nmain = do\n  pool <- newPool defaultPoolConfig { poolConnString = \"...\" }\n  result <- runValiantPool pool myApp\n  print result\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
          (hsPkgs."valiant" or (errorHandler.buildDepError "valiant"))
          (hsPkgs."pg-wire" or (errorHandler.buildDepError "pg-wire"))
        ];
        buildable = true;
      };
      tests = {
        "valiant-fused-effects-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."valiant" or (errorHandler.buildDepError "valiant"))
            (hsPkgs."valiant-fused-effects" or (errorHandler.buildDepError "valiant-fused-effects"))
            (hsPkgs."pg-wire" or (errorHandler.buildDepError "pg-wire"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }