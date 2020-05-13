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
      identifier = { name = "Hsmtlib"; version = "2.8.8.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "numicola@gmail.com and rogerp062@gmail.com";
      author = "Nuno Laranjo And Rogério Pontes";
      homepage = "https://github.com/MfesGA/Hsmtlib";
      url = "";
      synopsis = "Haskell library for easy interaction with SMT-LIB 2 compliant solvers.";
      description = "Hsmtl provides functions to interact with several smt solvers using SMT-LIB 2.\nThe current suported solvers are Alt-Ergo, Cvc4, MathSat, Yices, Z3.\nAdditional solvers can be used if they are SMT-LIB 2 compliant.\nMore information and tutorials can be found in <https://github.com/MfesGA/Hsmtlib>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."smtLib" or (errorHandler.buildDepError "smtLib"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }