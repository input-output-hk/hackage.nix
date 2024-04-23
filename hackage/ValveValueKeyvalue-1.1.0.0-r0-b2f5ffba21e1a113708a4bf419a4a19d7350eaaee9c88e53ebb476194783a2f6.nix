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
      specVersion = "2.4";
      identifier = { name = "ValveValueKeyvalue"; version = "1.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "b.gomes.negri@gmail.com";
      author = "Bernardo Gomes Negri";
      homepage = "https://github.com/BernardoGomesNegri/ValveValueKeyvalue";
      url = "";
      synopsis = "A Valve Value-keyvalue parser for Haskell made with Parsec.";
      description = "This is a package made to parse Valve's value-keyvalue format, common in Source Engine games.\nValve value-keyvalue files may take the extensions \".pop\" or \".vtf\". The main module is Text.ValveVKV.\nThe main function you will be using is parseValveVKV.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
    };
  }