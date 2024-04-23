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
      identifier = { name = "ivory-bitdata"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Galois, Inc.";
      maintainer = "jamesjb@galois.com";
      author = "Galois, Inc.";
      homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
      url = "";
      synopsis = "Ivory bit-data support.";
      description = "See the paper http://yav.github.io/publications/bitdata.pdf";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ivory" or (errorHandler.buildDepError "ivory"))
          (hsPkgs."ivory-backend-c" or (errorHandler.buildDepError "ivory-backend-c"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      exes = {
        "ivory-bitdata-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ivory-bitdata" or (errorHandler.buildDepError "ivory-bitdata"))
            (hsPkgs."ivory" or (errorHandler.buildDepError "ivory"))
            (hsPkgs."ivory-backend-c" or (errorHandler.buildDepError "ivory-backend-c"))
          ];
          buildable = true;
        };
      };
    };
  }