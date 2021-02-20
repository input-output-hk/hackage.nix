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
      identifier = { name = "servant-validate"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 Justin Le";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/servant-validate#readme";
      url = "";
      synopsis = "Chekc static properties of servant APIs";
      description = "A package with \"test suites\" to help verify that your servant APIs are valid at\ncompile-time.\n\nCurrently the only property tested is that there are no duplicated paths.\n\n```haskell\ndata DeadlySinEnum = Lust | Gluttony | Greed | Sloth | Wrath | Envy | Pride\n\ntype MathApi  = \"sin\" :> ReqBody '[JSON] Double        :> Post '[JSON] NoContent\ntype SatanApi = \"sin\" :> ReqBody '[JSON] DeadlySinEnum :> Post '[JSON] NoContent\n\ntype MyApi = MathApi :<|> SatanApi\n\nmyApi :: Proxy MyApi\nmyApi = Proxy\n\nvalidMyApi :: ValidApiTree MyApi\nvalidMyApi = validApiTree myApi\n```\n\n```haskell\nwarning: [-Wdeferred-type-errors]\n• Duplicate method in API at path /sin: \"POST\"\n• In the expression: validApiTree myApi\nIn an equation for ‘validMyApi’: validMyApi = validApiTree myApi\n```";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "servant-validate-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-validate" or (errorHandler.buildDepError "servant-validate"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }