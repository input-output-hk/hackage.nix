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
      specVersion = "2.2";
      identifier = { name = "extended"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Evan Overman";
      maintainer = "evanrileyoverman@gmail.com";
      author = "Evan Overman";
      homepage = "https://github.com/an-prata/extended#readme";
      url = "";
      synopsis = "Support for an 80-bit extended float.";
      description = "Support for an 80-bit extended float, as specified by the Apple Numerics Manual, Second Edition (1988). The spec can be found on page 18.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "extended-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extended" or (errorHandler.buildDepError "extended"))
          ];
          buildable = true;
        };
      };
    };
  }