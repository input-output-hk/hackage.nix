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
      specVersion = "1.8";
      identifier = { name = "ScratchFs"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Falco Hirschenberger <hirsch@bigfoot.de>";
      maintainer = "Falco Hirschenberger <hirsch@bigfoot.de>";
      author = "Falco Hirschenberger <hirsch@bigfoot.de>";
      homepage = "http://github.com/hirschenberger/ScratchFS";
      url = "";
      synopsis = "Size limited temp filesystem based on fuse";
      description = "ScratchFS is a FUSE-based filesystem which provides a size-limited directory tree.\nWhen the filesystem is mounted, the user provides a maximum size the target directory and all it's\nsubdirectories may get. All IO operations in the mountdirectory are tracked and the oldest files in the watchdirectory get deleted automatically.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ScratchFs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HFuse" or (errorHandler.buildDepError "HFuse"))
            (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }