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
      identifier = { name = "multipart-names"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Eric Nedervold";
      maintainer = "Eric Nedervold<nedervoldsoftware@gmail.com>";
      author = "Eric Nedervold<nedervoldsoftware@gmail.com>";
      homepage = "http://github.com/nedervold/multipart-names";
      url = "";
      synopsis = "Handling of multipart names in various casing styles";
      description = "Basic utilities to handle multipart names with conversion between\ncasing styles UpperCamelCase, lowerCamelCase,\nCase_insensitive_Underscored, UPPER_UNDERSCORED, lower_underscored\nand UPPER-HYPHENATED, Case-insensitive-Hyphenated, and\nlower-hyphenated.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."multipart-names" or (errorHandler.buildDepError "multipart-names"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = true;
          };
        };
      };
    }