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
      identifier = { name = "coercion-extras"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) mniip 2019";
      maintainer = "mniip@mniip.com";
      author = "mniip";
      homepage = "https://github.com/mniip/coercion-extras";
      url = "";
      synopsis = "Extra utilities for manipulating nominal and representational coercions";
      description = "Extra utilities for manipulating nominal (@(~)@) and representational (@Coercible@) coercions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."coercion-extras" or (errorHandler.buildDepError "coercion-extras"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }