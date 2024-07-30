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
      specVersion = "2.4";
      identifier = { name = "haskus-utils-types"; version = "1.6"; };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2024";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "https://www.haskus.org";
      url = "";
      synopsis = "Haskus types utility modules";
      description = "Haskus types utility modules (Nat, List, etc.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }