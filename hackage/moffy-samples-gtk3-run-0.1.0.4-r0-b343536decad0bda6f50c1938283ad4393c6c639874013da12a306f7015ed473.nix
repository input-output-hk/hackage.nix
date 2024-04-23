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
      identifier = { name = "moffy-samples-gtk3-run"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/moffy-samples-gtk3-run#readme";
      url = "";
      synopsis = "Package to run moffy samples - GTK3 version";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/moffy-samples-gtk3-run#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
          (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."moffy" or (errorHandler.buildDepError "moffy"))
          (hsPkgs."moffy-samples-events" or (errorHandler.buildDepError "moffy-samples-events"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."simple-cairo" or (errorHandler.buildDepError "simple-cairo"))
          (hsPkgs."simple-pango" or (errorHandler.buildDepError "simple-pango"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."type-flip" or (errorHandler.buildDepError "type-flip"))
          (hsPkgs."type-set" or (errorHandler.buildDepError "type-set"))
          (hsPkgs."union-color" or (errorHandler.buildDepError "union-color"))
        ];
        pkgconfig = [
          (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0"))
        ];
        buildable = true;
      };
      tests = {
        "moffy-samples-gtk3-run-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
            (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."moffy" or (errorHandler.buildDepError "moffy"))
            (hsPkgs."moffy-samples-events" or (errorHandler.buildDepError "moffy-samples-events"))
            (hsPkgs."moffy-samples-gtk3-run" or (errorHandler.buildDepError "moffy-samples-gtk3-run"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."simple-cairo" or (errorHandler.buildDepError "simple-cairo"))
            (hsPkgs."simple-pango" or (errorHandler.buildDepError "simple-pango"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."type-flip" or (errorHandler.buildDepError "type-flip"))
            (hsPkgs."type-set" or (errorHandler.buildDepError "type-set"))
            (hsPkgs."union-color" or (errorHandler.buildDepError "union-color"))
          ];
          buildable = true;
        };
      };
    };
  }