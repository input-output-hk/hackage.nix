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
      identifier = { name = "staticanalysis"; version = "0.0.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Andrei Lapets <lapets@bu.edu>";
      author = "Andrei Lapets";
      homepage = "";
      url = "";
      synopsis = "Reusable static analysis interfaces and modules.";
      description = "Reusable static analysis interfaces and modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          ];
        buildable = true;
        };
      };
    }