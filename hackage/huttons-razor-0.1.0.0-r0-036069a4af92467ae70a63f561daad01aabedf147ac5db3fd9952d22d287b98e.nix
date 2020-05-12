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
      identifier = { name = "huttons-razor"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "steven@steshaw.org";
      author = "Steven Shaw";
      homepage = "";
      url = "";
      synopsis = "Quick implemention of Hutton's Razor";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "huttons-razor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."parsec-numbers" or (errorHandler.buildDepError "parsec-numbers"))
            ];
          buildable = true;
          };
        };
      };
    }