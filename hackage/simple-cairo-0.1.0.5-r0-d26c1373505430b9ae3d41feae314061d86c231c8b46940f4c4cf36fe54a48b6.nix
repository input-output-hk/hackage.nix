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
      identifier = { name = "simple-cairo"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Yoshikuni Jujo";
      maintainer = "PAF01143@nifty.ne.jp";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/simple-cairo#readme";
      url = "";
      synopsis = "Binding to Cairo library";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/simple-cairo#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
          (hsPkgs."cairo-image" or (errorHandler.buildDepError "cairo-image"))
          (hsPkgs."exception-hierarchy" or (errorHandler.buildDepError "exception-hierarchy"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."union-angle" or (errorHandler.buildDepError "union-angle"))
          (hsPkgs."union-color" or (errorHandler.buildDepError "union-color"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        pkgconfig = [
          (pkgconfPkgs."cairo" or (errorHandler.pkgConfDepError "cairo"))
        ];
        buildable = true;
      };
      tests = {
        "cairo-image-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
            (hsPkgs."cairo-image" or (errorHandler.buildDepError "cairo-image"))
            (hsPkgs."exception-hierarchy" or (errorHandler.buildDepError "exception-hierarchy"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."simple-cairo" or (errorHandler.buildDepError "simple-cairo"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."union-angle" or (errorHandler.buildDepError "union-angle"))
            (hsPkgs."union-color" or (errorHandler.buildDepError "union-color"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "exception-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
            (hsPkgs."cairo-image" or (errorHandler.buildDepError "cairo-image"))
            (hsPkgs."exception-hierarchy" or (errorHandler.buildDepError "exception-hierarchy"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."simple-cairo" or (errorHandler.buildDepError "simple-cairo"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."union-angle" or (errorHandler.buildDepError "union-angle"))
            (hsPkgs."union-color" or (errorHandler.buildDepError "union-color"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "test-rotate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
            (hsPkgs."cairo-image" or (errorHandler.buildDepError "cairo-image"))
            (hsPkgs."exception-hierarchy" or (errorHandler.buildDepError "exception-hierarchy"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."simple-cairo" or (errorHandler.buildDepError "simple-cairo"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."union-angle" or (errorHandler.buildDepError "union-angle"))
            (hsPkgs."union-color" or (errorHandler.buildDepError "union-color"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }