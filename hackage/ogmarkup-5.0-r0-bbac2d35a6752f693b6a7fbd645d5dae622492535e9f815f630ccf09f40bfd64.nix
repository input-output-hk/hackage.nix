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
    flags = { bench = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ogmarkup"; version = "5.0"; };
      license = "MIT";
      copyright = "2016 - 2018 Ogma Project";
      maintainer = "contact@thomasletan.fr";
      author = "Thomas Letan, Laurent Georget";
      homepage = "https://nest.pijul.com/lthms/ogmarkup";
      url = "";
      synopsis = "A lightweight markup language for story writers";
      description = "ogmarkup is a lightweight markup language for story\nwriters. `ogmarkup` also refers to a haskell library that provides\na generic conversion function to transform an ogmarkup document\ninto a ready-to-publish document.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "ogmadown-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-megaparsec" or (errorHandler.buildDepError "hspec-megaparsec"))
            (hsPkgs."ogmarkup" or (errorHandler.buildDepError "ogmarkup"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "ogmarkup-bench" = {
          depends = (pkgs.lib).optionals (flags.bench) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."ogmarkup" or (errorHandler.buildDepError "ogmarkup"))
            (hsPkgs."file-embed-poly" or (errorHandler.buildDepError "file-embed-poly"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.bench then true else false;
          };
        };
      };
    }