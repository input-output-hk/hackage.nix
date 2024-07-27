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
      identifier = { name = "sound-change"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ombspring@gmail.com";
      author = "Owen Bechtel";
      homepage = "https://github.com/UnaryPlus/sound-change";
      url = "";
      synopsis = "Apply sound changes to words";
      description = "Example usage:\n\n@\n{-# LANGUAGE QuasiQuotes #-}\nimport Language.Change (Change, applyChanges)\nimport Language.Change.Quote\n\nsetV = \"aeiou\"\n\nchanges :: [Change Char]\nchanges = [chs|\n&#x20; * { k > tʃ; g > dʒ } / _i\n&#x20; * i > e / _i\n&#x20;   u > o / _u\n&#x20; * { p > b; t > d } / V_{Vlr}\n&#x20; * a > e / _V!*i\n&#x20; |]\n\nresults = map (applyChanges changes) [ \"kiis\", \"kapir\", \"atri\" ]\n\\-- [ \"tʃeis\", \"kebir\", \"edri\" ]\n@\n\nSee the module documentation for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."sound-change" or (errorHandler.buildDepError "sound-change"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }