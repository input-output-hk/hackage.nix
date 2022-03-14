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
      identifier = { name = "cleff-plugin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Xy Ren";
      maintainer = "xy.r@outlook.com";
      author = "Xy Ren";
      homepage = "https://github.com/re-xyr/cleff#readme";
      url = "";
      synopsis = "Automatic disambiguation for extensible effects";
      description = "Please see the README on GitHub at <https://github.com/re-xyr/cleff/tree/master/cleff-plugin#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cleff" or (errorHandler.buildDepError "cleff"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
          ];
        buildable = true;
        };
      tests = {
        "cleff-plugin-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cleff" or (errorHandler.buildDepError "cleff"))
            (hsPkgs."cleff-plugin" or (errorHandler.buildDepError "cleff-plugin"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
            ];
          buildable = true;
          };
        };
      };
    }