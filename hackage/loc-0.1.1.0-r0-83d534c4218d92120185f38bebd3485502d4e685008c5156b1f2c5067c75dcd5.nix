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
      identifier = { name = "loc"; version = "0.1.1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/haskell-libraries";
      url = "";
      synopsis = "Types representing line and column positions and ranges in text files.";
      description = "The package name /loc/ stands for “location” and is also an allusion to the\nacronym for “lines of code”.\n\nThe @Loc@ type represents a caret position in a text file, the @Span@ type\nis a nonempty range between two @Loc@s, and the @Area@ type is a set of\nnon-touching @Span@s.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."loc" or (errorHandler.buildDepError "loc"))
          ];
          buildable = true;
        };
        "hedgehog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."loc" or (errorHandler.buildDepError "loc"))
            (hsPkgs."loc-test" or (errorHandler.buildDepError "loc-test"))
          ];
          buildable = true;
        };
      };
    };
  }