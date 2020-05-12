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
      identifier = { name = "random-variates"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015, Keynan James Pratt";
      maintainer = "Keynan James Pratt <keynan.pratt@gmail.com>";
      author = "Keynan James Pratt <keynan.pratt@gmail.com>";
      homepage = "https://bitbucket.org/kpratt/random-variate";
      url = "";
      synopsis = "\"Uniform RNG => Non-Uniform RNGs\"";
      description = "\"Collection of transforms uniform random number generators (RNGs) into any of a dozen common RNGs. Each presenting several common interfaces\"   ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."reinterpret-cast" or (errorHandler.buildDepError "reinterpret-cast"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }