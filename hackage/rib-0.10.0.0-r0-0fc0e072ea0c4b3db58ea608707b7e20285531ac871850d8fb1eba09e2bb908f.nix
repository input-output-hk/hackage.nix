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
      identifier = { name = "rib"; version = "0.10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://github.com/srid/rib#readme";
      url = "";
      synopsis = "Static site generator based on Shake";
      description = "Haskell static site generator based on Shake, with a delightful development experience.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mmark" or (errorHandler.buildDepError "mmark"))
          (hsPkgs."mmark-ext" or (errorHandler.buildDepError "mmark-ext"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."pandoc-include-code" or (errorHandler.buildDepError "pandoc-include-code"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      tests = {
        "rib-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mmark" or (errorHandler.buildDepError "mmark"))
            (hsPkgs."mmark-ext" or (errorHandler.buildDepError "mmark-ext"))
            (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-include-code" or (errorHandler.buildDepError "pandoc-include-code"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }