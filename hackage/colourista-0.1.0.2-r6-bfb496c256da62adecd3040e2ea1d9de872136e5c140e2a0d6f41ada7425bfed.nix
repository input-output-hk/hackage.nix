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
      specVersion = "2.4";
      identifier = { name = "colourista"; version = "0.1.0.2"; };
      license = "MPL-2.0";
      copyright = "2020-2022 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Veronika Romashkina, Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/colourista";
      url = "";
      synopsis = "Convenient interface for printing colourful messages";
      description = "Convenient interface for printing colourful messages based on the @ansi-terminal@ library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "colourista-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."colourista" or (errorHandler.buildDepError "colourista"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }