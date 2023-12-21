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
      identifier = { name = "moffy-samples-gtk3"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/moffy-samples-gtk3#readme";
      url = "";
      synopsis = "Sample executables of moffy - GTK3 version";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/moffy-samples-gtk3#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "moffy_samples_gtk3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moffy-samples" or (errorHandler.buildDepError "moffy-samples"))
            (hsPkgs."moffy-samples-gtk3-run" or (errorHandler.buildDepError "moffy-samples-gtk3-run"))
            ];
          buildable = true;
          };
        };
      tests = {
        "moffy-samples-gtk3-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moffy-samples" or (errorHandler.buildDepError "moffy-samples"))
            (hsPkgs."moffy-samples-gtk3-run" or (errorHandler.buildDepError "moffy-samples-gtk3-run"))
            ];
          buildable = true;
          };
        };
      };
    }