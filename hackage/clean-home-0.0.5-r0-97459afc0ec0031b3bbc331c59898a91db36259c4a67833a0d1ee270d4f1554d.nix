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
      identifier = { name = "clean-home"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "https://github.com/ivanperez-keera/clean-home";
      url = "";
      synopsis = "Keep your home dir clean by finding old conf files";
      description = "clean-home searches for config files in your \$HOME\nthat no installed package/program will need.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "clean-home" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."HSH" or (errorHandler.buildDepError "HSH"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
            ];
          buildable = true;
          };
        };
      };
    }