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
      specVersion = "1.0";
      identifier = { name = "HSHHelpers"; version = "0.23"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2008 Thomas Hartman";
      maintainer = "Thomas Hartman <thomashartman1 at gmail>";
      author = "Thomas Hartman";
      homepage = "";
      url = "";
      synopsis = "Convenience functions that use HSH, instances for HSH. ";
      description = "Functions I found I was using repeatedly when doing shell programming with HSH.\nRather than duplicate code, released on hackage.\nA lot of this is cruft. For instance, you are probably better off having a look at System.Posix.Files and\nSystem.Posix.Users, which I overlooked when writing, before making too much use of hsh helpers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HSH" or (errorHandler.buildDepError "HSH"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."HStringTemplateHelpers" or (errorHandler.buildDepError "HStringTemplateHelpers"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."DebugTraceHelpers" or (errorHandler.buildDepError "DebugTraceHelpers"))
          ];
        buildable = true;
        };
      };
    }