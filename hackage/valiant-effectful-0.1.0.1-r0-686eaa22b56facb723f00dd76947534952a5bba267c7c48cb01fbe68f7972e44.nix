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
      identifier = { name = "valiant-effectful"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joshburgess.webdev@gmail.com";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/valiant";
      url = "";
      synopsis = "Effectful adapter for valiant";
      description = "Provides an @Valiant@ effect for the @effectful@ effect system, enabling\ncompile-time checked SQL queries as an effect with pool-based handlers.\n\n@\nimport Valiant.Effectful\n\nmyApp :: (Valiant :> es, IOE :> es) => Eff es [User]\nmyApp = do\n  users <- fetchAllEff listUsers ()\n  forM_ users $ \\\\u -> executeEff updateLastSeen (userId u)\n  pure users\n\nmain :: IO ()\nmain = do\n  pool <- newPool defaultPoolConfig { poolConnString = \"...\" }\n  runEff . runValiant pool $ myApp\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."valiant" or (errorHandler.buildDepError "valiant"))
          (hsPkgs."pg-wire" or (errorHandler.buildDepError "pg-wire"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "valiant-effectful-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."valiant" or (errorHandler.buildDepError "valiant"))
            (hsPkgs."valiant-effectful" or (errorHandler.buildDepError "valiant-effectful"))
            (hsPkgs."pg-wire" or (errorHandler.buildDepError "pg-wire"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }