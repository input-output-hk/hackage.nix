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
      identifier = { name = "dozenal"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "siddhanathan@gmail.com";
      author = "Siddhanathan Shanmugam";
      homepage = "https://github.com/siddhanathan/dozenal";
      url = "";
      synopsis = "A Haskell library for using Dozenal (Duodecimal - Base 12) numbers.";
      description = "A Haskell library for using Dozenal (Duodecimal - Base 12) numbers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }