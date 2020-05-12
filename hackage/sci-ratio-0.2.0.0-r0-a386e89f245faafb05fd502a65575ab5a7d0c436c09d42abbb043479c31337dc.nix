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
      identifier = { name = "sci-ratio"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 Phil Ruffwind";
      maintainer = "rf@rufflewind.com";
      author = "Phil Ruffwind";
      homepage = "https://github.com/Rufflewind/sci-ratio";
      url = "";
      synopsis = "Rational numbers in scientific notation.";
      description = "Parsing and pretty-printing of exact rational numbers with arbitrarily large\nexponents.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sci-ratio" or (errorHandler.buildDepError "sci-ratio"))
            ];
          buildable = true;
          };
        };
      };
    }