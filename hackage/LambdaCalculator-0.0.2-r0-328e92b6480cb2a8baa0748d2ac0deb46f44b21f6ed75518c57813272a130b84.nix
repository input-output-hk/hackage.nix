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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "LambdaCalculator"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Tim Sheard";
      maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Tim Sheard";
      homepage = "";
      url = "";
      synopsis = "A basic lambda calculator with beta reduction and a REPL";
      description = "A basic lambda calculator with beta reduction and a REPL";
      buildType = "Simple";
      };
    components = {
      exes = {
        "LambdaCalculator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }