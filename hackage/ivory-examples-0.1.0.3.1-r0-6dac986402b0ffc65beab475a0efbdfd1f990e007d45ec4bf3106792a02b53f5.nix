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
      identifier = { name = "ivory-examples"; version = "0.1.0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2013 Galois, Inc.";
      maintainer = "trevor@galois.com, leepike@galois.com";
      author = "Galois, Inc";
      homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
      url = "";
      synopsis = "Ivory examples.";
      description = "Various examples demonstrating the use of Ivory.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ivory-c-clang-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."ivory" or (errorHandler.buildDepError "ivory"))
            (hsPkgs."ivory-opts" or (errorHandler.buildDepError "ivory-opts"))
            (hsPkgs."ivory-backend-c" or (errorHandler.buildDepError "ivory-backend-c"))
            (hsPkgs."ivory-stdlib" or (errorHandler.buildDepError "ivory-stdlib"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }