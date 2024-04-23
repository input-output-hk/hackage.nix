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
      specVersion = "1.18";
      identifier = { name = "filepath-bytestring"; version = "1.4.2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2005-2019\nJoey Hess 2019";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Library for manipulating RawFilePaths in a cross platform way.";
      description = "This package provides functionality for manipulating @RawFilePath@\nvalues. It can be used as a drop in replacement for the filepath library\nto get the benefits of using ByteStrings. It provides three modules:\n\n* \"System.FilePath.Posix.ByteString\" manipulates POSIX\\/Linux style @RawFilePath@ values (with @\\/@ as the path separator).\n\n* \"System.FilePath.Windows.ByteString\" manipulates Windows style @RawFilePath@ values (with either @\\\\@ or @\\/@ as the path separator, and deals with drives).\n\n* \"System.FilePath.ByteString\" is an alias for the module appropriate to your platform.\n\nAll three modules provide the same API, and the same documentation (calling out differences in the different variants).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ (if system.isWindows
          then [
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
      };
      tests = {
        "filepath-tests" = {
          depends = [
            (hsPkgs."filepath-bytestring" or (errorHandler.buildDepError "filepath-bytestring"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }