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
      identifier = { name = "ety"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Chris Done 2012";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done <chrisdone@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Random etymology online entry.";
      description = "Retrieve random etymology online entries. Library and program.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "ety" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }