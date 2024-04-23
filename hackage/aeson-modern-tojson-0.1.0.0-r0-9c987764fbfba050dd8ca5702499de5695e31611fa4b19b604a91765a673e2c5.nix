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
      identifier = { name = "aeson-modern-tojson"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "Gautier DI FOLCO";
      maintainer = "gautier.difolco@gmail.com";
      author = "Gautier DI FOLCO";
      homepage = "https://github.com/blackheaven/aeson-modern-tojson#readme";
      url = "";
      synopsis = "Provide a handy way for derving ToJSON proprely.";
      description = "Provide a newtype to be used with DerivingVia to correctly derive <https://hackage.haskell.org/package/aeson-1.5.6.0/docs/Data-Aeson.html#g:7 ToJSON>.\n\nAs simple as:\n\n\n@\ndata W = W Int Int\nderiving stock (Generic)\nderiving (ToJSON) via (ModernToJSON W)\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "aeson-modern-tojson-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-modern-tojson" or (errorHandler.buildDepError "aeson-modern-tojson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
          ];
          buildable = true;
        };
      };
    };
  }