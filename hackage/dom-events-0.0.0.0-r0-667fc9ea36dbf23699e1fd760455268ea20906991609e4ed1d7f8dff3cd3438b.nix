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
      identifier = { name = "dom-events"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Author name here";
      maintainer = "mike@meeshkan.com";
      author = "Mike Solomon";
      homepage = "https://github.com/meeshkan/haskell-dom-events#readme";
      url = "";
      synopsis = "DOM Events expressed as Haskell types";
      description = "Please see the README on GitHub at <https://github.com/meeshkan/haskell-dom-events#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "dom-events-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dom-events" or (errorHandler.buildDepError "dom-events"))
          ];
          buildable = true;
        };
      };
    };
  }