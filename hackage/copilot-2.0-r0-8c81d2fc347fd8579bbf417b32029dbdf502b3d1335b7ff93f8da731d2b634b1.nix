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
      identifier = { name = "copilot"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lee Pike <leepike@galois.com>";
      author = "Nis Nordby Wegmann, Lee Pike, Robin Morisset, Sebastian Niller, Alwyn Goodloe";
      homepage = "http://leepike.github.com/Copilot/";
      url = "";
      synopsis = "A stream DSL for writing embedded C programs.";
      description = "Documentation is available at the website, and see the included examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."copilot-core" or (errorHandler.buildDepError "copilot-core"))
          (hsPkgs."copilot-language" or (errorHandler.buildDepError "copilot-language"))
          (hsPkgs."copilot-libraries" or (errorHandler.buildDepError "copilot-libraries"))
          (hsPkgs."copilot-cbmc" or (errorHandler.buildDepError "copilot-cbmc"))
          ];
        buildable = true;
        };
      exes = {
        "copilot-regression" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."copilot-core" or (errorHandler.buildDepError "copilot-core"))
            (hsPkgs."copilot-language" or (errorHandler.buildDepError "copilot-language"))
            (hsPkgs."copilot-libraries" or (errorHandler.buildDepError "copilot-libraries"))
            (hsPkgs."copilot-c99" or (errorHandler.buildDepError "copilot-c99"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }