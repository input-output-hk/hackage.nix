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
      identifier = { name = "lio-fs"; version = "0.0.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Hails team <hails at scs dot stanford dot edu>";
      author = "Hails team";
      homepage = "";
      url = "";
      synopsis = "Labeled File System interface for LIO";
      description = "A very simple file system interface for LIO. Labels are associated\nwith files and directories in the form of extended attributes.  This\nlibrary exposes a simple API for on files and directories that\nabides by information flow control: a label on the file protects its\ncontents, while a directory label protects the containing files'\nattributes (names and labels).\n\nSee \"LIO.FS.TCB\" for a description of the filestore implementation\nand \"LIO.FS.Simple\" for a description of the actual API.\n\nThis library is still under development, use with care.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."lio" or (errorHandler.buildDepError "lio"))
          (hsPkgs."xattr" or (errorHandler.buildDepError "xattr"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          ];
        buildable = true;
        };
      };
    }