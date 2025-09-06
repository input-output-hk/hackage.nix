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
      identifier = { name = "web-routes-th"; version = "0.22.8.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "https://github.com/happstack/web-routes-th";
      url = "";
      synopsis = "Support for deriving PathInfo using Template Haskell";
      description = "web-routes is a portable library for type-safe URLs. This module adds\nsupport for creating the URL parsers/printers automatically using\nTemplate Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
        ];
        buildable = true;
      };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
            (hsPkgs."web-routes-th" or (errorHandler.buildDepError "web-routes-th"))
          ];
          buildable = true;
        };
      };
    };
  }