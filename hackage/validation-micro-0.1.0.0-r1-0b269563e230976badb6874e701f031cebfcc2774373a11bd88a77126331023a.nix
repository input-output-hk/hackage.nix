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
      identifier = { name = "validation-micro"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Marco Zocca";
      maintainer = "@ocramz";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/validation-micro";
      url = "";
      synopsis = "Lighweight pure data validation based on Applicative";
      description = "Lighweight pure data validation based on Applicative. The library provides the\nfollowing Either-like data type with suitable instances like Semigroup to accumulate validation errors in the `Failure` branch :\n\n@\n__data__ Validation e a\n\\    = Failure e\n\\    | Success a\n@\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
    };
  }