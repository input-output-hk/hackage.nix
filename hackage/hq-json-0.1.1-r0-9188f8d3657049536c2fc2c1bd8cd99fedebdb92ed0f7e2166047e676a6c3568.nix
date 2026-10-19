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
      specVersion = "1.18";
      identifier = { name = "hq-json"; version = "0.1.1"; };
      license = "MIT";
      copyright = "Damian Franco Alvarez, 2026";
      maintainer = "damianfral <huevofritopamojarpan@gmail.com>";
      author = "damianfral <huevofritopamojarpan@gmail.com>";
      homepage = "https://github.com/damianfral/hq#readme";
      url = "";
      synopsis = "A streaming JSON processor inspired by jq, with a lens-based query language.";
      description = "hq is a JSON processor inspired by jq. It queries JSON with optics\nand rewrites values with transformations, streaming input so large\ndocuments never load fully into memory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "hq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hq-json" or (errorHandler.buildDepError "hq-json"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hq-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hq-json" or (errorHandler.buildDepError "hq-json"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."sydtest-discover" or (errorHandler.buildDepError "sydtest-discover"))
          ];
          buildable = true;
        };
      };
    };
  }