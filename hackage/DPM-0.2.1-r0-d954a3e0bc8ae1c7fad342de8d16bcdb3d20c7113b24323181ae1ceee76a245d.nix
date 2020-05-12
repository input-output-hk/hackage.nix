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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "DPM"; version = "0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009-2010 Stefan Wehr";
      maintainer = "Stefan Wehr <mail@stefanwehr.de>";
      author = "Stefan Wehr <mail@stefanwehr.de>";
      homepage = "";
      url = "";
      synopsis = "Darcs Patch Manager";
      description = "The Darcs Patch Manager (/DPM/ for short) is a tool that simplifies working\nwith the revision control system darcs (<http://darcs.net>). It is most\neffective when used in an environment where developers do not push their\npatches directly to the main repository but where patches undergo a\nreviewing process before they are actually applied. See the documentation\nof the module \"DPM.Tutorial\" for a short tutorial.";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "dpm-tests" = {
          depends = [
            (hsPkgs."darcs" or (errorHandler.buildDepError "darcs"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."HSH" or (errorHandler.buildDepError "HSH"))
            ];
          buildable = if flags.test then true else false;
          };
        "dpm" = {
          depends = [
            (hsPkgs."darcs" or (errorHandler.buildDepError "darcs"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."HSH" or (errorHandler.buildDepError "HSH"))
            ];
          buildable = true;
          };
        };
      };
    }