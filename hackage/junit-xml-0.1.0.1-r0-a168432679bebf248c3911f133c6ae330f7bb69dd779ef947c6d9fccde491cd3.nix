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
      specVersion = "1.18";
      identifier = { name = "junit-xml"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Jasper Woudenberg";
      maintainer = "mail@jasperwoudenberg.com";
      author = "Jasper Woudenberg";
      homepage = "https://github.com/jwoudenberg/junit-xml#readme";
      url = "";
      synopsis = "Producing JUnit-style XML test reports.";
      description = "Please see the README at <https://github.com/jwoudenberg/junit-xml>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."junit-xml" or (errorHandler.buildDepError "junit-xml"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
          ];
          buildable = true;
        };
      };
    };
  }