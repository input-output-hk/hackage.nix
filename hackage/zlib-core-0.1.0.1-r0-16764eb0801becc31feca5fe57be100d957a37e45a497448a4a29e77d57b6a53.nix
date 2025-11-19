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
      identifier = { name = "zlib-core"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/zlib-core#readme";
      url = "";
      synopsis = "Thin wrapper for zlib";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/zlib-core#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
          (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
          (hsPkgs."exception-hierarchy" or (errorHandler.buildDepError "exception-hierarchy"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."tools-yj" or (errorHandler.buildDepError "tools-yj"))
        ];
        pkgconfig = [
          (pkgconfPkgs."zlib" or (errorHandler.pkgConfDepError "zlib"))
        ];
        buildable = true;
      };
      tests = {
        "zlib-core-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-enum" or (errorHandler.buildDepError "c-enum"))
            (hsPkgs."c-struct" or (errorHandler.buildDepError "c-struct"))
            (hsPkgs."exception-hierarchy" or (errorHandler.buildDepError "exception-hierarchy"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."tools-yj" or (errorHandler.buildDepError "tools-yj"))
            (hsPkgs."zlib-core" or (errorHandler.buildDepError "zlib-core"))
          ];
          buildable = true;
        };
      };
    };
  }