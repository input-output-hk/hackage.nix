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
      identifier = { name = "cereal-uuid"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/cereal-uuid ";
      url = "";
      synopsis = "Integration of \"cereal\" and \"uuid\"";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }