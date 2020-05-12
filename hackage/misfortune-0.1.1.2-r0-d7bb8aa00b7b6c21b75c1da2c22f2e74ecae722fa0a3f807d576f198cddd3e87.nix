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
      identifier = { name = "misfortune"; version = "0.1.1.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/mokus0/misfortune";
      url = "";
      synopsis = "fortune-mod clone";
      description = "fortune-mod clone, in library and executable form.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."knob" or (errorHandler.buildDepError "knob"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "misfortune" = {
          depends = [
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            ];
          buildable = true;
          };
        "misfortune-strfile" = { buildable = true; };
        };
      };
    }