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
      specVersion = "1.8";
      identifier = { name = "ewe"; version = "0.1.0.46"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fcardona@eafit.edu.co";
      author = "Juan Francisco Cardona McCormick";
      homepage = "http://github.com/jfcmacro/ewe";
      url = "";
      synopsis = "A language for teaching simple programming languages";
      description = "Another implemention of the EWE programming language originally created and designed by Kent D. Lee. EWE is an extension of the RAM programming language (Ravin Sethi).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ewe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
            ];
          buildable = true;
          };
        };
      };
    }