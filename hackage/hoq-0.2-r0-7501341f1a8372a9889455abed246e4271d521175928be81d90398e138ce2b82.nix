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
      identifier = { name = "hoq"; version = "0.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "valery.isaev@gmail.com";
      author = "Valery Isaev";
      homepage = "http://github.com/valis/hoq";
      url = "";
      synopsis = "A language based on homotopy type theory with an interval type";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hoq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."prelude-extras" or (errorHandler.buildDepError "prelude-extras"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
            ];
          buildable = true;
          };
        };
      };
    }