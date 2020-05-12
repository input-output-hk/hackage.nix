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
    flags = { examples = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "haskell-to-elm"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Olle Fredriksson";
      maintainer = "fredriksson.olle@gmail.com";
      author = "Olle Fredriksson";
      homepage = "https://github.com/folq/haskell-to-elm#readme";
      url = "";
      synopsis = "Generate Elm types and JSON encoders and decoders from Haskell types";
      description = "Please see the README on GitHub at <https://github.com/folq/haskell-to-elm#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
          (hsPkgs."elm-syntax" or (errorHandler.buildDepError "elm-syntax"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "user-example" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
            (hsPkgs."elm-syntax" or (errorHandler.buildDepError "elm-syntax"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."haskell-to-elm" or (errorHandler.buildDepError "haskell-to-elm"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "haskell-to-elm-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bound" or (errorHandler.buildDepError "bound"))
            (hsPkgs."elm-syntax" or (errorHandler.buildDepError "elm-syntax"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."haskell-to-elm" or (errorHandler.buildDepError "haskell-to-elm"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }