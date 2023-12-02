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
      identifier = { name = "extra-data-yj"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Yoshikuni Jujo";
      maintainer = "PAF01143@nifty.ne.jp";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/extra-data-yj#readme";
      url = "";
      synopsis = "Additional data types";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/extra-data-yj#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "extra-data-yj-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extra-data-yj" or (errorHandler.buildDepError "extra-data-yj"))
            ];
          buildable = true;
          };
        };
      };
    }