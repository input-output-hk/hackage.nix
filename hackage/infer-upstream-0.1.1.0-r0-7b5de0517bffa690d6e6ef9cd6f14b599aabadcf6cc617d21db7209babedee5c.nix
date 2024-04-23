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
      identifier = { name = "infer-upstream"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "noonsilk@gmail.com";
      author = "Noon Silk";
      homepage = "https://github.com/silky/infer-upstream";
      url = "";
      synopsis = "Find the repository from where a given repo was forked";
      description = "Find the repository from where a given repo was forked";
      buildType = "Simple";
    };
    components = {
      exes = {
        "infer-upstream" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."github" or (errorHandler.buildDepError "github"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          ];
          buildable = true;
        };
      };
    };
  }