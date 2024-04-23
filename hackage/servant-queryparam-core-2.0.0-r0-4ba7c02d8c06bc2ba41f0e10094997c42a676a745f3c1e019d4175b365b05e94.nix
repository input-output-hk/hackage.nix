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
      specVersion = "2.2";
      identifier = { name = "servant-queryparam-core"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen 2020";
      maintainer = "Danila Danko <https://github.com/deemp>";
      author = "Kristof Bastiaensen";
      homepage = "";
      url = "";
      synopsis = "Use records for query parameters in servant APIs.";
      description = "Having positional parameters in @servant@ can be error-prone, especially when there are a lot of them and they have similar types.\nThis package solves that problem by letting one use records to specify query parameters in @servant@ APIs.\nUse [servant-queryparam-server](https://hackage.haskell.org/package/servant-queryparam-server) for servers, [servant-queryparam-client](https://hackage.haskell.org/package/servant-queryparam-client) for clients,\n[servant-queryparam-openapi3](https://hackage.haskell.org/package/servant-queryparam-openapi3) for [openapi3](https://hackage.haskell.org/package/openapi3).\nSee the [README](https://github.com/deemp/servant-queryparam/tree/main/servant-queryparam-core#readme) for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
        ];
        buildable = true;
      };
    };
  }