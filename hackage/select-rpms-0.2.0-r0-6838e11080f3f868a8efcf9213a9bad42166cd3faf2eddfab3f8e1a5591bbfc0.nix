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
      identifier = { name = "select-rpms"; version = "0.2.0"; };
      license = "MIT";
      copyright = "2024  Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/select-rpms";
      url = "";
      synopsis = "Select a subset of RPM packages";
      description = "A library for selecting a subset of RPM (sub)packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."rpm-nvr" or (errorHandler.buildDepError "rpm-nvr"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
          (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
          (hsPkgs."simple-prompt" or (errorHandler.buildDepError "simple-prompt"))
        ];
        buildable = true;
      };
    };
  }