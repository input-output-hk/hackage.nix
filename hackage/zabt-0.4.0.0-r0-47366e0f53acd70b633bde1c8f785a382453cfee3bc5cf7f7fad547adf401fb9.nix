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
      identifier = { name = "zabt"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Joseph Tel Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Tel Abrahamson <me@jspha.com>";
      homepage = "https://github.com/tel/hs-zabt#readme";
      url = "";
      synopsis = "Simple-minded abstract binding trees";
      description = "Simple-minded abstract binding trees. Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "zabt-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."zabt" or (errorHandler.buildDepError "zabt"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            ];
          buildable = true;
          };
        };
      };
    }