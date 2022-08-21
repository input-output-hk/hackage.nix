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
      identifier = {
        name = "generic-lexicographic-order";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Daniel Brice 2022";
      maintainer = "danielbrice@gmail.com";
      author = "Daniel Brice";
      homepage = "https://github.com/friedbrice/generic-lexicographic-order";
      url = "";
      synopsis = "Derive Bounded and Enum for sum types and Enum for product types";
      description = "Derive generic instances of 'Bounded' and/or 'Enum' for sums, and 'Enum'\ninstances for products, based on the instances of their components.\nThese instances are designed to cohere with the stock-derived 'Ord' instance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }