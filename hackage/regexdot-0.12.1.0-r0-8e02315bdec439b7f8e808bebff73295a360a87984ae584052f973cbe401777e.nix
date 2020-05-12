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
    flags = { llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "regexdot"; version = "0.12.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010-2015 Dr. Alistair Ward";
      maintainer = "mailto:regexdot@functionalley.eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu/RegExDot/regExDot.html";
      url = "";
      synopsis = "A polymorphic, POSIX, extended regex-engine.";
      description = "Provides a portable, POSIX, extended regex-engine, designed to process a list of /arbitrary/ objects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
          ];
        buildable = true;
        };
      };
    }