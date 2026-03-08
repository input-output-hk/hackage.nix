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
    flags = { dev = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "bolty-streamly"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2023-2026 philippedev101";
      maintainer = "philippedev101@gmail.com";
      author = "philippedev101";
      homepage = "https://github.com/philippedev101/bolty-streamly#readme";
      url = "";
      synopsis = "Streamly streaming interface for bolty Neo4j driver";
      description = "Streaming queries over Neo4j using streamly streams.\nWraps bolty's query functions with streamly's Stream type for\nlazy record-by-record consumption.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bolty" or (errorHandler.buildDepError "bolty"))
          (hsPkgs."packstream-bolt" or (errorHandler.buildDepError "packstream-bolt"))
          (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "bolty-streamly-integration" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bolty" or (errorHandler.buildDepError "bolty"))
            (hsPkgs."bolty-streamly" or (errorHandler.buildDepError "bolty-streamly"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."packstream-bolt" or (errorHandler.buildDepError "packstream-bolt"))
            (hsPkgs."sandwich" or (errorHandler.buildDepError "sandwich"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."validation-selective" or (errorHandler.buildDepError "validation-selective"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "bolty-streamly-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bolty" or (errorHandler.buildDepError "bolty"))
            (hsPkgs."bolty-streamly" or (errorHandler.buildDepError "bolty-streamly"))
            (hsPkgs."packstream-bolt" or (errorHandler.buildDepError "packstream-bolt"))
            (hsPkgs."sandwich" or (errorHandler.buildDepError "sandwich"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }