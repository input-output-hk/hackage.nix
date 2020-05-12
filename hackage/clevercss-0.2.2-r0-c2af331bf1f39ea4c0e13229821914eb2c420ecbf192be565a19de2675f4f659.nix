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
    flags = { parsec2 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "clevercss"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "georg@python.org";
      author = "Georg Brandl";
      homepage = "http://sandbox.pocoo.org/clevercss-hs/";
      url = "";
      synopsis = "A CSS preprocessor";
      description = "CleverCSS is a CSS preprocessing library that allows defining variables and nesting selectors so that you don't need to Repeat Yourself.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ [ (hsPkgs."parsec" or (errorHandler.buildDepError "parsec")) ];
        buildable = true;
        };
      exes = {
        "clevercss" = {
          depends = [
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }