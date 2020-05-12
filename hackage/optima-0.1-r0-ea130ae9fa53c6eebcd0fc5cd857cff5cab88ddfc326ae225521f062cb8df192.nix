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
      identifier = { name = "optima"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/optima";
      url = "";
      synopsis = "Simple command line interface arguments parser";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-data" or (errorHandler.buildDepError "attoparsec-data"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          ];
        buildable = true;
        };
      tests = {
        "demo" = {
          depends = [
            (hsPkgs."optima" or (errorHandler.buildDepError "optima"))
            (hsPkgs."attoparsec-data" or (errorHandler.buildDepError "attoparsec-data"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            ];
          buildable = true;
          };
        };
      };
    }