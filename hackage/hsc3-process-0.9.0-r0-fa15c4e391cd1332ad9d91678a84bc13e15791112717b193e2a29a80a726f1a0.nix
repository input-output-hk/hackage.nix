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
    flags = { build-examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hsc3-process"; version = "0.9.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten and others 2008-2013";
      maintainer = "kaoskorobase@gmail.com";
      author = "Stefan Kersten, Rohan Drape";
      homepage = "https://github.com/kaoskorobase/hsc3-process";
      url = "";
      synopsis = "Create and control scsynth processes";
      description = "This library allows to create and control scsynth processes.\n\nChangeLog: <https://github.com/kaoskorobase/hsc3-process/blob/master/ChangeLog.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-compat" or (errorHandler.buildDepError "time-compat"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "hsc3-sine" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-process" or (errorHandler.buildDepError "hsc3-process"))
          ];
          buildable = if flags.build-examples then true else false;
        };
        "hsc3-nrt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-process" or (errorHandler.buildDepError "hsc3-process"))
          ];
          buildable = if flags.build-examples then true else false;
        };
      };
    };
  }