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
      specVersion = "1.18";
      identifier = { name = "tasty-inspection-testing"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2017 Joachim Breitner, 2021 Andrew Lelechenko";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Joachim Breitner, Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/tasty-inspection-testing";
      url = "";
      synopsis = "Inspection testing support for tasty";
      description = "Integrate @inspection-testing@ into @tasty@ test suites.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }