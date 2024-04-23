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
      identifier = { name = "ghc-plugin-non-empty"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2022 Dmitrii Kovanikov";
      maintainer = "Dmitrii Kovanikov <kovanikov@gmail.com>";
      author = "Dmitrii Kovanikov";
      homepage = "https://github.com/chshersh/ghc-plugin-non-empty";
      url = "";
      synopsis = "GHC Plugin for non-empty lists";
      description = "GHC Plugin for compile-time transformation of list literals to @NonEmpty@ lists.\n\n@\n{-# __OPTIONS_GHC__ -fplugin=GhcPluginNonEmpty #-}\n\n__import__ Data.List.NonEmpty (NonEmpty)\n\nportsToListen :: NonEmpty Int\nportsToListen = [8000, 8080, 8081]\n@\n\nSee [README.md](https://github.com/chshersh/ghc-plugin-non-empty#ghc-plugin-non-empty)\nfor more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
        ];
        buildable = true;
      };
      tests = {
        "ghc-plugin-non-empty-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugin-non-empty" or (errorHandler.buildDepError "ghc-plugin-non-empty"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }