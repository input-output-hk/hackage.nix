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
      identifier = { name = "webcolor-labels"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "me@sandwitch.dev";
      author = "Andrei Borzenkov <me@sandwitch.dev>";
      homepage = "https://github.com/haskell-game/webcolor-labels";
      url = "";
      synopsis = "Plug-n-play #hex-syntax for your colors";
      description = "This library contains a small number of helpers that primarily aim\nto help users construct `IsLabel` instances to use @-XOverloadedLabels@\nsyntax to construct their color types using widely known web color syntax.\n\nPlug this library into your code, enable OverloadedLabels and use\n#fff, #1212bc44, and even #fuchsia to create colors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "webcolor-labels-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."webcolor-labels" or (errorHandler.buildDepError "webcolor-labels"))
          ];
          buildable = true;
        };
      };
    };
  }