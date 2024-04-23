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
      specVersion = "3.0";
      identifier = { name = "json-spec-elm"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2022 Rick Owens";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/json-spec-elm";
      url = "";
      synopsis = "Elm code generate for `json-spec`.";
      description = "Produce elm types, encoders, and decoders from a\n[`json-spec`](https://hackage.haskell.org/package/json-spec) `Specification`.\n\nSee `/test/test.hs` for an example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."elm-syntax" or (errorHandler.buildDepError "elm-syntax"))
          (hsPkgs."json-spec" or (errorHandler.buildDepError "json-spec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."elm-syntax" or (errorHandler.buildDepError "elm-syntax"))
            (hsPkgs."json-spec" or (errorHandler.buildDepError "json-spec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."json-spec-elm" or (errorHandler.buildDepError "json-spec-elm"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }