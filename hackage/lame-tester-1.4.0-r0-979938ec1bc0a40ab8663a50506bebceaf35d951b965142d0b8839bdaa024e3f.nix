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
      specVersion = "1.22";
      identifier = { name = "lame-tester"; version = "1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jason.bertsche@gmail.com";
      author = "Jason Bertsche";
      homepage = "http://github.com/TheBizzle";
      url = "";
      synopsis = "A strange and unnecessary selective test-running library";
      description = "A strange and unnecessary selective test-running library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
          (hsPkgs."bizzlelude" or (errorHandler.buildDepError "bizzlelude"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."bizzlelude" or (errorHandler.buildDepError "bizzlelude"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lame-tester" or (errorHandler.buildDepError "lame-tester"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }