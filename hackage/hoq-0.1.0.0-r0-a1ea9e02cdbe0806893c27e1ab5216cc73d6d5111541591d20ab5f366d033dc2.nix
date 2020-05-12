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
      identifier = { name = "hoq"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "valery.isaev@gmail.com";
      author = "isaev";
      homepage = "http://github.com/valis/hoq";
      url = "";
      synopsis = "A language based on homotopy type theory with an interval object";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hoq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."BNFC" or (errorHandler.buildDepError "BNFC"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."prelude-extras" or (errorHandler.buildDepError "prelude-extras"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
            ];
          buildable = true;
          };
        };
      };
    }