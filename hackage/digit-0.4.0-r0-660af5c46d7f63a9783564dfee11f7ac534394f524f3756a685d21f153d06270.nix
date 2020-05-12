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
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "digit"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/digit";
      url = "";
      synopsis = "A data-type representing digits 0-9 and other combinations";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\n@Digit@ is a data-type that represents the digits 0-9 and other combinations.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."papa" or (errorHandler.buildDepError "papa"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }