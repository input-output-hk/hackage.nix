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
      identifier = { name = "numerals-base"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2009–2011 Roel van Dijk, Bas van Dijk";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>, Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/roelvandijk/numerals-base";
      url = "";
      synopsis = "Convert numbers to number words";
      description = "This package contains machinery to construct functions that convert\nnumbers to number words. It allows you to write a function which\nconverts a number like 142 to the string \\\"one hundred and\nforty-two\\\".\n\nThe documentation for the \"Text.Numeral\" module contains an high\nlevel overview of the package.\n\nIf you just want to convert numbers to number words in a specific\nlanguage you should probably use the @numerals@ package. That\npackage also contains numerous examples on how to use the functions\nin this package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."containers-unicode-symbols" or (errorHandler.buildDepError "containers-unicode-symbols"))
          (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
        ];
        buildable = true;
      };
      tests = {
        "test-numerals" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."containers-unicode-symbols" or (errorHandler.buildDepError "containers-unicode-symbols"))
            (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }