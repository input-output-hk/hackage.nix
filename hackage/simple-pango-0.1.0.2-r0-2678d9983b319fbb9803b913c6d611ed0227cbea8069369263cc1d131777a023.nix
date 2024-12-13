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
      identifier = { name = "simple-pango"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2021 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/simple-pango#readme";
      url = "";
      synopsis = "Binding to Pango library";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/simple-pango#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
          (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."glib-stopgap" or (errorHandler.buildDepError "glib-stopgap"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."simple-cairo" or (errorHandler.buildDepError "simple-cairo"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."union-angle" or (errorHandler.buildDepError "union-angle"))
          (hsPkgs."union-color" or (errorHandler.buildDepError "union-color"))
        ];
        pkgconfig = [
          (pkgconfPkgs."pangocairo" or (errorHandler.pkgConfDepError "pangocairo"))
          (pkgconfPkgs."gobject-2.0" or (errorHandler.pkgConfDepError "gobject-2.0"))
        ];
        buildable = true;
      };
      tests = {
        "simple-pango-test" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
            (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."glib-stopgap" or (errorHandler.buildDepError "glib-stopgap"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."simple-cairo" or (errorHandler.buildDepError "simple-cairo"))
            (hsPkgs."simple-pango" or (errorHandler.buildDepError "simple-pango"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."union-angle" or (errorHandler.buildDepError "union-angle"))
            (hsPkgs."union-color" or (errorHandler.buildDepError "union-color"))
          ];
          buildable = true;
        };
      };
    };
  }