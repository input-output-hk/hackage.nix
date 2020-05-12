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
      identifier = { name = "servant-swagger-tags"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Daishi Nakajima";
      maintainer = "nakaji.dayo@mail.com";
      author = "Daishi Nakajima";
      homepage = "https://github.com/nakaji-dayo/servant-swagger-tags#readme";
      url = "";
      synopsis = "Swagger Tags for Servant";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."servant-swagger" or (errorHandler.buildDepError "servant-swagger"))
          (hsPkgs."servant-mock" or (errorHandler.buildDepError "servant-mock"))
          (hsPkgs."swagger2" or (errorHandler.buildDepError "swagger2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }