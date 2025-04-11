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
    flags = { compile-elm = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "json-spec-elm"; version = "0.4.0.6"; };
      license = "MIT";
      copyright = "2025 Owens Murray, LLC.";
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
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."elm-syntax" or (errorHandler.buildDepError "elm-syntax"))
          (hsPkgs."json-spec" or (errorHandler.buildDepError "json-spec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "compile-elm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."elm-syntax" or (errorHandler.buildDepError "elm-syntax"))
            (hsPkgs."json-spec" or (errorHandler.buildDepError "json-spec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ pkgs.lib.optionals (flags.compile-elm) [
            (hsPkgs."json-spec-elm" or (errorHandler.buildDepError "json-spec-elm"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }