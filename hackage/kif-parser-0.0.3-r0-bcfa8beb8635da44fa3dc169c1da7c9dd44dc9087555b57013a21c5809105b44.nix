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
      specVersion = "1.6";
      identifier = { name = "kif-parser"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jan Christiansen <j.christiansen@monoid-it.de>";
      author = "Jan Christiansen";
      homepage = "";
      url = "";
      synopsis = "Process KIF iOS test logs";
      description = "Converts KIF (Keep It Functional) iOS integration test logs into other formats, i.e., JUnit XML format ";
      buildType = "Simple";
      };
    components = {
      exes = {
        "kif-parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."twine" or (errorHandler.buildDepError "twine"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."hostname" or (errorHandler.buildDepError "hostname"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }