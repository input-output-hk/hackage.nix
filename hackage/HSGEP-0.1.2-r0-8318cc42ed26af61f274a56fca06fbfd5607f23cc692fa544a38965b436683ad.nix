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
      specVersion = "1.6";
      identifier = { name = "HSGEP"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2010 Matthew Sottile";
      maintainer = "Matthew Sottile <mjsottile@computer.org>";
      author = "Matthew Sottile";
      homepage = "http://github.com/mjsottile/hsgep/";
      url = "";
      synopsis = "Gene Expression Programming evolutionary algorithm in Haskell";
      description = "Gene Expression Programming evolutionary algorithm implemented\nin Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
          (hsPkgs."monad-mersenne-random" or (errorHandler.buildDepError "monad-mersenne-random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "HSGEP_Regression" = {
          depends = [ (hsPkgs."csv" or (errorHandler.buildDepError "csv")) ];
          buildable = true;
          };
        "HSGEP_CADensity" = { buildable = false; };
        };
      };
    }