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
      identifier = { name = "discover-instances"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/discover-instances#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/parsonsmatt/discover-instances#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."some-dict-of" or (errorHandler.buildDepError "some-dict-of"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
        ];
        buildable = true;
      };
      tests = {
        "discover-instances-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."discover-instances" or (errorHandler.buildDepError "discover-instances"))
            (hsPkgs."some-dict-of" or (errorHandler.buildDepError "some-dict-of"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
          ];
          buildable = true;
        };
      };
    };
  }