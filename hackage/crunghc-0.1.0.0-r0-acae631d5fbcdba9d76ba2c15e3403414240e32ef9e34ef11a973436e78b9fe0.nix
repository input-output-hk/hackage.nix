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
      identifier = { name = "crunghc"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "aljee@hyper.cx";
      author = "Takano Akio";
      homepage = "";
      url = "";
      synopsis = "A runghc replacement with transparent caching";
      description = "crunghc is a program that acts like runghc. When it\nexecutes a Haskell script, it automatically stores a\ncompiled cache of the script to the disk, so that the\ncompilation overhead can be avoided in subsequent runs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "crunghc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
          };
        };
      };
    }