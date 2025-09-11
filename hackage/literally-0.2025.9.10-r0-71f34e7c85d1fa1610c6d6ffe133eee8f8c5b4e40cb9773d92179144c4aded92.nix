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
      specVersion = "3.0";
      identifier = { name = "literally"; version = "0.2025.9.10"; };
      license = "0BSD";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Type-safe conversion of type literals into runtime values.";
      description = "Literally is a minimal library that converts type literals into values\nusing type-safe mechanisms. It provides a single 'literal' function that\nleverages Haskell's type system to convert compile-time literals (numbers,\nstrings, characters, booleans, tuples) into runtime values with compile-time\ncorrectness guarantees. The library supports numeric types with automatic\nbounds checking, string and character literals, boolean values, unit types,\nand tuple types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }