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
      identifier = { name = "random-variates"; version = "0.1.5.0"; };
      license = "MIT";
      copyright = "(c) 2015, Keynan James Pratt";
      maintainer = "Keynan James Pratt <keynan.pratt@gmail.com>";
      author = "Keynan James Pratt <keynan.pratt@gmail.com>";
      homepage = "https://bitbucket.org/kpratt/random-variate";
      url = "";
      synopsis = "\"Uniform RNG => Non-Uniform RNGs\"";
      description = "\"Collection of transforms uniform random number generators (RNGs) into any of a dozen common RNGs. Each presenting several common interfaces. Additionally Empirical distributions can be sampled from and tested (chi-squared) against theoretical distributions.\"   ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."reinterpret-cast" or (errorHandler.buildDepError "reinterpret-cast"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."erf" or (errorHandler.buildDepError "erf"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      exes = {
        "Gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random-variates" or (errorHandler.buildDepError "random-variates"))
            ];
          buildable = true;
          };
        };
      tests = {
        "vis" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."random-variates" or (errorHandler.buildDepError "random-variates"))
            ];
          buildable = true;
          };
        "units" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random-variates" or (errorHandler.buildDepError "random-variates"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }