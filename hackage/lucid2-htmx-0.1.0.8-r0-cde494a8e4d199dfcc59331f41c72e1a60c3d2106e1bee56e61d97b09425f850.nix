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
      specVersion = "1.12";
      identifier = { name = "lucid2-htmx"; version = "0.1.0.8"; };
      license = "BSD-3-Clause";
      copyright = "2022 Monadic Systems LLC";
      maintainer = "tech@monadic.systems";
      author = "Monadic Systems LLC";
      homepage = "https://github.com/monadicsystems/lucid-htmx/tree/main/lucid2#readme";
      url = "";
      synopsis = "Use htmx in your lucid templates";
      description = "Please see the README on GitHub at <https://github.com/monadicsystems/lucid-htmx/tree/main/lucid2#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "lucid2-htmx-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
            (hsPkgs."lucid2-htmx" or (errorHandler.buildDepError "lucid2-htmx"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }