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
      specVersion = "1.10";
      identifier = { name = "nagios-check"; version = "0.3.2"; };
      license = "MIT";
      copyright = "2014-2015 Sharif Olorin";
      maintainer = "sio@tesser.org";
      author = "Sharif Olorin";
      homepage = "https://github.com/olorin/haskell-nagios-check";
      url = "";
      synopsis = "Package for writing monitoring plugins";
      description = "Implements Nagios plugin development guidelines\nwithin a Haskell framework for writing Nagios\nchecks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      tests = {
        "nagios-check-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."nagios-check" or (errorHandler.buildDepError "nagios-check"))
            ];
          buildable = true;
          };
        };
      };
    }