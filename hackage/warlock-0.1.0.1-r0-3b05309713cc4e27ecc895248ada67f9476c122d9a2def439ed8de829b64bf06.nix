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
      specVersion = "2.2";
      identifier = { name = "warlock"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2025 Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/warlock#readme";
      url = "";
      synopsis = "Automatic type-safe conversion between Haskell data types using Template Haskell";
      description = "Please see the README on GitHub at <https://github.com/githubuser/warlock#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."barbies" or (errorHandler.buildDepError "barbies"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
        ];
        buildable = true;
      };
      tests = {
        "warlock-test" = {
          depends = [
            (hsPkgs."barbies" or (errorHandler.buildDepError "barbies"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."warlock" or (errorHandler.buildDepError "warlock"))
            (hsPkgs."witch" or (errorHandler.buildDepError "witch"))
          ];
          buildable = true;
        };
      };
    };
  }