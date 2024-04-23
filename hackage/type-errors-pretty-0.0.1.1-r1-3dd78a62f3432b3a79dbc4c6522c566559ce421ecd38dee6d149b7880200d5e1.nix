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
      identifier = { name = "type-errors-pretty"; version = "0.0.1.1"; };
      license = "MPL-2.0";
      copyright = "2019-2020 Dmitrii Kovanikov";
      maintainer = "Dmitrii Kovanikov <kovanikov@gmail.com>";
      author = "Dmitrii Kovanikov";
      homepage = "https://github.com/chshersh/type-errors-pretty";
      url = "";
      synopsis = "Combinators for writing pretty type errors easily";
      description = "This library provides replacements for the @ErrorMessage@ constructors to\nwrite the text of custom error messages easily.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          ];
          buildable = true;
        };
      };
    };
  }