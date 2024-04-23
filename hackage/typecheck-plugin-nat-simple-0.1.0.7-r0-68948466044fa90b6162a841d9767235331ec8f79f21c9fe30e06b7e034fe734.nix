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
      identifier = {
        name = "typecheck-plugin-nat-simple";
        version = "0.1.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo.pc@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/typecheck-plugin-nat-simple#readme";
      url = "";
      synopsis = "Simple type check plugin which calculate addition, subtraction and less-or-equal-than";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/typecheck-plugin-nat-simple#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
        ];
        buildable = true;
      };
      tests = {
        "typecheck-plugin-nat-simple-test-log" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
            (hsPkgs."typecheck-plugin-nat-simple" or (errorHandler.buildDepError "typecheck-plugin-nat-simple"))
          ];
          buildable = true;
        };
        "typecheck-plugin-nat-simple-test-spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
            (hsPkgs."typecheck-plugin-nat-simple" or (errorHandler.buildDepError "typecheck-plugin-nat-simple"))
          ];
          buildable = true;
        };
        "typecheck-plugin-nat-simple-test-tryLog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
            (hsPkgs."typecheck-plugin-nat-simple" or (errorHandler.buildDepError "typecheck-plugin-nat-simple"))
          ];
          buildable = true;
        };
      };
    };
  }