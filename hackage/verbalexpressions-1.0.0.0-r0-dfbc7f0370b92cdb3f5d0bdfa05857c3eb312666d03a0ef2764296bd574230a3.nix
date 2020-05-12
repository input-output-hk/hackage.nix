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
      identifier = { name = "verbalexpressions"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "(c) 2013, whackashoe";
      maintainer = "";
      author = "whackashoe";
      homepage = "https://github.com/VerbalExpressions/HaskellVerbalExpressions";
      url = "";
      synopsis = "Regular expressions made easy";
      description = "VerbalExpressions is a Haskell library that helps to construct\ndifficult regular expressions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          ];
        buildable = true;
        };
      };
    }