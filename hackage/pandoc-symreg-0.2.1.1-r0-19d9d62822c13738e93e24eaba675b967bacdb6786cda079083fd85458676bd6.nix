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
      identifier = { name = "pandoc-symreg"; version = "0.2.1.1"; };
      license = "GPL-3.0-only";
      copyright = "2023 Fabricio Olivetti de França";
      maintainer = "fabricio.olivetti@gmail.com";
      author = "Fabricio Olivetti de França";
      homepage = "https://github.com/folivetti/pandoc-symreg#readme";
      url = "";
      synopsis = "A tool to convert symbolic regression expressions into different formats.";
      description = "A pandoc-like cli tool and library to convert symbolic regression expressions to convenient formats";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-expr" or (errorHandler.buildDepError "attoparsec-expr"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."srtree" or (errorHandler.buildDepError "srtree"))
          (hsPkgs."srtree-eqsat" or (errorHandler.buildDepError "srtree-eqsat"))
        ];
        buildable = true;
      };
      exes = {
        "pandoc-symreg" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-expr" or (errorHandler.buildDepError "attoparsec-expr"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pandoc-symreg" or (errorHandler.buildDepError "pandoc-symreg"))
            (hsPkgs."srtree" or (errorHandler.buildDepError "srtree"))
            (hsPkgs."srtree-eqsat" or (errorHandler.buildDepError "srtree-eqsat"))
          ];
          buildable = true;
        };
      };
      tests = {
        "pandoc-symreg-test" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-expr" or (errorHandler.buildDepError "attoparsec-expr"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pandoc-symreg" or (errorHandler.buildDepError "pandoc-symreg"))
            (hsPkgs."srtree" or (errorHandler.buildDepError "srtree"))
            (hsPkgs."srtree-eqsat" or (errorHandler.buildDepError "srtree-eqsat"))
          ];
          buildable = true;
        };
      };
    };
  }