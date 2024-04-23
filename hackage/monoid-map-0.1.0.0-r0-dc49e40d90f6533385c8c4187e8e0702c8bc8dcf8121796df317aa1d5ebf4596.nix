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
      identifier = { name = "monoid-map"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "https://github.com/obsidiansystems/monoid-map";
      url = "";
      synopsis = "Newtype wrapper around 'Data.Map.Monoidal.MonoidalMap' that has a correct 'Group' instance.";
      description = "The 'Group' instance for Data.MonoidMap has a unique neutral element,\nas compared to 'Data.Map.Monoidal.MonoidalMap'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."appendmap" or (errorHandler.buildDepError "appendmap"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monoidal-containers" or (errorHandler.buildDepError "monoidal-containers"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
        ];
        buildable = true;
      };
    };
  }