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
      identifier = { name = "mvc-updates"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Gabriella Gonzalez";
      maintainer = "GenuineGabriella@gmail.com";
      author = "Gabriella Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Concurrent and combinable updates";
      description = "Use the @mvc-updates@ library to build programs with multiple\ncontinously updating inputs where you can attach listeners to updates.\n\nKey features include:\n\n* @Applicative@ updates,\n\n* a tiny interface, and:\n\n* interoperation with the @mvc@ library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."mvc" or (errorHandler.buildDepError "mvc"))
        ];
        buildable = true;
      };
    };
  }